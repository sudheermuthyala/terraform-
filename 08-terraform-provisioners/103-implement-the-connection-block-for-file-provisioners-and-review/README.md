## File provisioners and connection Block
**Connection Block** Most pprovisioners require access to the remote resource via `SSH` or `WinRM`, and expeted a nested connection block with details about how to connect. 

- The connection Block is required, connection block is primarly thing we need to define when we define the provisioners primarly for 
    - file provisioner
    - remote 
- we can have connection block inside resource block for all provisioners [or] we can have a connection block inside a provisioner block for that respetive provisioner 
- 