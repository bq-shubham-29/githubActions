data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/createInstance.py"
  output_path = "${path.module}/createInstance.zip"
}

data "aws_apigatewayv2_api" "my_api" {
  api_id = "9cwhvxvin1"
}

resource "aws_lambda_function" "test_lambda" {
   filename      = "${path.module}/createInstance.zip"
   function_name = "scaleUpInstance"
   role          = "arn:aws:iam::195767721609:role/EC2-lambda"
   handler       = "createInstance.lambda_handler"
   runtime       = "python3.9"
}

resource "aws_apigatewayv2_integration" "lambda" {
  api_id = data.aws_apigatewayv2_api.my_api.id 
  integration_method = "POST"
  integration_type                    = "AWS_PROXY"
  integration_uri         = "${aws_lambda_function.test_lambda.invoke_arn}"
}

resource "aws_lambda_permission" "lambda_permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.test_lambda.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:ap-south-1:195767721609:9cwhvxvin1/*/*/lambda_function_name"#"${data.aws_apigatewayv2_api.my_api.execution_arn}/*/*/${aws_lambda_function.test_lambda.function_name}"
}
