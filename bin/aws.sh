alias s3ls='aws s3 ls --human-readable --summarize'
alias s3cp='aws s3 cp'
alias s3mv='aws s3 mv'
alias s3rm='aws s3 rm'
alias lambdalsv='aws lambda list-versions-by-function --function-name'
alias lambdalsa='aws lambda list-aliases --function-name'

function lambdasa {
    aws lambda update-alias --function-name $1 --name $2 --function-version $3
}

alias dyodblist='aws dynamodb list-tables'
alias dyodbdesc='aws dynamodb describe-table --table-name'
