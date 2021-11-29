resource "aws_iam_user" "MyUser" {
    for_each = toset(["sudheer","sridheer","alaikhya","hakeesh"])
    name  = each.value
    #name
}


/*
for_each set of strings 
each.key=each.value

*/