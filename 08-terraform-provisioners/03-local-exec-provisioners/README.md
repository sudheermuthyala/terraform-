## Local-Exec Provisioner
# Introduction
- Understand about `Local-exec` Provisioner
- The `Local-exec` Provisioner invokes a local executable after aresource is created 
- This Invoke a process on the machine running terraform, Not on the resource.

## Review The Local-exec Provisioner code
**Creation Time ProvisionerProvisioner**
- we will create one provisioner during creation time, It will output the private ip of the instance into afile name `creation-time-output-ip.txt`
**Destroy**

