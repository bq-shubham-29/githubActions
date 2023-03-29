module "autoScaling" {
  source                = "./modules/autoScaling"
  vpcId                 = var.vpcId
  minSize               = var.minSize
  maxSize               = var.maxSize
  desiredCapacity       = var.desiredCapacity
  publicSubnetCidr      = var.publicSubnetCidr
  instanceType          = var.instanceType
  keyName               = var.keyName
  githubActionsToken    = var.githubActionsToken
  githubActionsUrl      = var.githubActionsUrl
  scalingAdjustment     = var.scalingAdjustment
  availabilityZone      = var.availabilityZone
  cooldown              = var.cooldown
  comparisonOperator    = var.comparisonOperator
  evaluationPeriods     = var.evaluationPeriods
  period                = var.period
  threshold             = var.threshold
  metricName            = var.metricName
  cloudWatchStatistic   = var.cloudWatchStatistic
  adjustmentType        = var.adjustmentType
  cloudWatchNamespace   = var.cloudWatchNamespace
  amiName               = var.amiName
  amiRootDeviceType     = var.amiRootDeviceType
  amiVirtualizationType = var.amiVirtualizationType
}

