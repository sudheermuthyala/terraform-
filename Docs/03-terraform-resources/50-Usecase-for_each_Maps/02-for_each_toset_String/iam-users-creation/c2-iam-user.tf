resource "aws_iam_user" "MyUser" {
    for_each = toset(["sudheer","sridheer","alaikhya","hakeesh"])
    name  = each.value
}


/*
for_each set of strings 
eack

*/