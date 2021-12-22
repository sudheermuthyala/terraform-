## Terraform provisioners 
![img.png](img.png)

## Types of provisioners
**provisioner types**
- file provisioner 
- remote-exec provisioner
- local-exec Provisioner

**Connection Block**
- Most provisioners requires access to the remote resource vis `ssh,WinRM` it expect a nested connection block with details about how to conect
- expressions in connection blocks cannot refer to there parrent resource by name,instade they can use the special self object.
![img_1.png](img_1.png)

### File Provisioners
- file provisioner is used to copy files or directories form mechine executing terraform to the newly created resource
- file provisioner supports both ssh and winrm type connections 
![img_2.png](img_2.png)

### Local Exec Provisioner  
- The local-exec provisioner inv  