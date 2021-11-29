resource "aws_iam_user" "MyUser" {
    for_each = toset(["sudheer",sridheer])  
}