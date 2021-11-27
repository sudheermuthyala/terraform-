#Resource-9 creating elastic ip

resource "aws_eip" "DEV_web_server_eip" {
  instance = aws_instance.MY_DEV_VM.id
  vpc = true
  #Meta aurgement
  depends_on = [ aws_internet_gateway.DEV_IGW ]
  
}