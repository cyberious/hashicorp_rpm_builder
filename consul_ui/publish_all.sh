pulp-admin login --username "$PULP_USERNAME" --password "$PULP_PASSWORD"

pulp-admin rpm repo publish run --repo-id $REPO_EL6_ID
pulp-admin rpm repo publish run --repo-id $REPO_EL7_ID
