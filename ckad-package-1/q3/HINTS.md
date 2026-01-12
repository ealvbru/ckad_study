# Hints for Question 3

## Hint 1: Understand the Requirements

Read the EXERCISE.md carefully and identify:
- What resources need to be created?
- What namespaces are involved?
- What configuration is required?

## Hint 2: Break Down the Task

Divide the task into smaller steps:
1. Create necessary namespaces
2. Create required resources
3. Configure the resources
4. Verify the setup

## Hint 3: Use kubectl Commands

Useful commands:
- `kubectl create namespace <name>` - Create namespace
- `kubectl apply -f <file>` - Apply YAML file
- `kubectl get <resource>` - List resources
- `kubectl describe <resource> <name>` - Show details
- `kubectl logs <pod>` - View pod logs

## Hint 4: YAML Structure

Remember the basic YAML structure:
```yaml
apiVersion: v1
kind: <ResourceType>
metadata:
  name: <name>
  namespace: <namespace>
spec:
  # Resource-specific configuration
```

## Hint 5: Common Issues

- Check namespace exists before creating resources
- Verify image names and tags
- Ensure ports are correctly specified
- Check labels and selectors match

## Hint 6: Validation

After completing:
1. Verify resources are created: `kubectl get <resource>`
2. Check status: `kubectl describe <resource> <name>`
3. Run validation script: `./validate.sh`

## Still Stuck?

- Review the Kubernetes documentation
- Check error messages carefully
- Use `kubectl describe` for more details
- Look at similar examples in other exercises
