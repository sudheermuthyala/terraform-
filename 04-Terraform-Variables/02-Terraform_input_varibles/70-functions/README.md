## v9: Implement Custom Validation Rules in Variables 
- v9-Input-Variables-Validation-Rules
- Understand and implement custom validation rules in variables
- [Terraform console](https://www.terraform.io/docs/cli/commands/console.html) The `terraform console`command provides an interactive console for evaluating expressions.

## v9-01: Learn Terraform Length Function
- [Terraform LengthFunction](https://www.terraform.io/docs/language/functions/length.html)

```t  
# Go to Terraform Console
    terraform console
# Test length function
Template: length()
length("hi")
length("hello")
length(["a", "b", "c"]) # List
length({"key" = "value"}) # Map
length({"key1" = "value1", "key2" = "value2" }) #Map
```

## v9-02: Learn Terraform SubString Function
- [Terraform Sub String Function](https://www.terraform.io/docs/language/functions/substr.html)
```t
# Go to Terraform Console
terraform console

# Test substr function
Template: substr(string, offset, length)
substr("sudheer muthyala naidu", 1, 4)
substr("sudheer muthyala naidu", 0, 6)
substr("sudheer muthyala naidu", 0, 1)
substr("sudheer muthyala naidu", 0, 0)
substr("sudheer muthyala naidu", 0, 10)
```



