# AWS
export AWS_ACCESS_KEY_ID=AKIAS2SBIDLV54HPJKG4
echo "AWS_ACCESS_KEY_ID environment variable set"
export AWS_SECRET_ACCESS_KEY=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
echo "AWS_SECRET_ACCESS_KEY environment variable set"

# Terraform Cloud
export TF_TOKEN=K8bxTuEmic8hZg.atlasv1.8FHNlhUHufckcMIjmOUNKfXmMuZa1JcNt3nkuoMzQlDgbVaJBPu7bDaIHzNyTJttgVk
echo "TF_TOKEN environment variable set"
export TF_VAR_private_key=$(/bin/cat .ssh/id_rsa | base64)
echo "TF_VAR_private_key environment variable set"
export TF_VAR_public_key=$(/bin/cat .ssh/id_rsa.pub | base64)
echo "TF_VAR_public_key environment variable set"
