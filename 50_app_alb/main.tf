module "alb" {
  source                = "terraform-aws-modules/alb/aws"
  internal              = true
  name                  = "${local.resource_name}-app-alb"
  vpc_id                = local.vpc_id
  enable_deletion_protection = false
  subnets               = local.private_subnet_ids
  security_groups       = [data.aws_ssm_parameter.app_alb_sg_id.value]
  create_security_group = false

  tags = merge(
    var.common_tags,
    var.app_alb_tags,

  )
}

resource "aws_lb_listener" "HTTP" {
  load_balancer_arn = module.alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "<h1>Hello</h1>"
      status_code  = "200"
    }
  }
}

module "records" {
  source = "terraform-aws-modules/route53/aws//modules/records"

  zone_name = var.zone_name

  records = [
    {
      name = "*.app-${var.environment}"
      type = "A"
      alias = {
        name    = module.alb.dns_name
        zone_id = module.alb.zone_id # This belongs ALB internal hosted zone, not ours
      }
    },
  ]
}
