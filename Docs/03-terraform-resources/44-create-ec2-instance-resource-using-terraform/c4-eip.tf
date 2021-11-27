#Resource-9 creating elastic ip

resource "aws_eip" "DEV_web_server_eip" {
  instance = aws_instance.MY_DEV_VM.id
  vpc = true
  depends_on = [ 
  
}