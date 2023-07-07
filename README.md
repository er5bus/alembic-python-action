# Run Alembic GitHub Custom Action
This GitHub Custom Action runs Alembic in a Docker container. Alembic is a database migration tool for SQLAlchemy.

## Inputs
### command
The Alembic command to run. It's required.

### working-directory
The directory to run the Alembic command from. It's optional.

## Outputs
This action has no outputs.

## Example usage
```yaml
uses: er5bus/alembic-python-action@v1
with:
  command: 'upgrade head'
  working-directory: './path/to/alembic/config/directory'
```

## License
This action is licensed under the MIT License.
