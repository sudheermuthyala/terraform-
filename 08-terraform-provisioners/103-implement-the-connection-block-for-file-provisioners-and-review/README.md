## File provisioners and connection Block
**Connection Block** Most pprovisioners require access to the remote resource via `SSH` or `WinRM`, and expeted a nested connection block with details about how to connect. 

- The connection Block is required, connection block is primarly thing we need to define when we define the provisioners. primarly for 
    - file provisioner  (filr provisiner is provisining the files in the remote system)
    - remote_exec       (remote_exec provisioner is to run the `scripts` or `commands` o the remote system )
- In Boath places terraform to connect to respective mechine and execute the commands in remote
- we can have connection block inside resource block for all provisioners [or] we can have a connection block inside a provisioner block for that respetive provisioner 
**Selfe Object**
- **Important Techinical Note:** Resource reference are restricted hear because reference create dependencies. Refering to a resource by name within it own block would create a dependency cycle(self.public_ip)
- Expressions in provisioner blocks `cannot refer to their parrent resource name` instead,they can use the special **self object**.
- The **self object**  represents the provisioner's parent resource, and has all of that resource's