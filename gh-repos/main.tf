provider "github" {
  owner = var.gh_organization
}

resource "github_repository" "repos" {
  for_each           = var.repos
  name               = each.key
  description        = each.value.description
  visibility         = each.value.visibility
  allow_merge_commit = each.value.allow_merge_commit
  allow_squash_merge = each.value.allow_squash_merge
  allow_rebase_merge = each.value.allow_rebase_merge
}
