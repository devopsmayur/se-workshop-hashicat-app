
/**** **** **** **** **** **** **** **** **** **** **** ****
 Add a collection of policies to enhance the governance rules
 to support business rules and security guidelines.
**** **** **** **** **** **** **** **** **** **** **** ****/

resource "tfe_policy_set" "test" {
  name          = "Hashicat-Social"
  description   = "Policies for HashiCat Social"
  organization  = data.tfe_organization.org.name
  policies_path = "/policies"
  workspace_ids = [tfe_workspace.hashicat.id]

# IL-632 --- uncommend this section if you want to use versioned
# policy sets
##   vcs_repo {
##     identifier         = "${var.github_organization}/${var.github_repo}"
##     branch             = "main"
##     ingress_submodules = false
##     oauth_token_id     = tfe_oauth_client.github.oauth_token_id
##   }
# END IL-632

}
