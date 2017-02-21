pulp-admin login --username "$PULP_USERNAME" --password "$PULP_PASSWORD"

pulp-admin rpm repo remove rpm --filters "{\"filename\":\"consul-ui-0.8.0-1.el7.x86_64.rpm\"}" --repo-id $REPO_EL7_ID
pulp-admin rpm repo remove rpm --filters "{\"filename\":\"consul-ui-0.8.0-1.el6.x86_64.rpm\"}" --repo-id $REPO_EL6_ID

pulp-admin rpm repo uploads rpm --dir `pwd`/el7 --repo-id $REPO_EL7_ID
pulp-admin rpm repo uploads rpm --dir `pwd`/el6 --repo-id $REPO_EL6_ID
