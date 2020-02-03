resource "stripe_product" "service" {
  name = var.name
  type = "service"
}

resource "stripe_plan" "pricing" {
  count    = length(var.pricing_plans)
  product  = stripe_product.service.id
  amount   = lookup(var.pricing_plans[count.index], "amount")
  interval = lookup(var.pricing_plans[count.index], "interval", "month")
  currency = lookup(var.pricing_plans[count.index], "currency", "eur")
}

resource "stripe_webhook_endpoint" "notify_charge_event" {
  count = var.webhook_endpoint == "" ? 0 : 1
  url   = var.webhook_endpoint

  enabled_events = [
    "charge.succeeded",
    "charge.failed",
  ]
}
