local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('modeling.agileuml', 'eclipse-agileuml') {
  settings+: {
    description: "",
    name: "Eclipse AgileUML project",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('agileuml') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "csharp",
        "go",
        "python"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "AgileUML tools for MDE using UML",
      has_discussions: true,
      homepage: "https://www.agilemde.co.uk",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "agile",
        "ocl",
        "uml"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
