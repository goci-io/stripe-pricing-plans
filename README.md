# stripe-pricing-plans

**Maintained by [@goci-io/prp-terraform](https://github.com/orgs/goci-io/teams/prp-terraform)**

### Usage

For the latest version you can check the [releases](https://github.com/goci-io/stripe-pricing-plans/releases) page. 

```hcl
module "pricing_plans" {
  source           = "git::https://github.com/goci-io/stripe-pricing-plans.git?ref=tags/<latest-version>"
  name             = "my-project"
  api_token        = "stripe API token"
  webhook_endpoint = "https://notify.me.on.charge.events.com"
  pricing_plans    = [
    {
      name     = "Starter"
      amount   = 999 # 9.99
      currency = "EUR"
      interval = "month"
    }
  ]
}
```
