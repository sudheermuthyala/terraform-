## Step-06: Terraform force-unlock command
- This command comes under **Terraform Disaster Recovery Concept**
- Manually unlock the state for the defined configuration.
- This will not modify your infrastructure. 
- This command removes the lock on the state for the current configuration. 
- The behavior of this lock is dependent on the backend (aws s3 with dynamodb for state locking etc) being used. 
- **Important Note:** Local state files cannot be unlocked by another process.
```t
# Manually Unlock the State
terraform force-unlock LOCK_ID
```