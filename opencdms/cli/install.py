import click
import subprocess
import sys


@click.group()
def install():
    pass


@install.command()
def docs():
    """Installs the requirements for building the documentation."""
    try:
        sh.pip('install', '-r', 'requirements/docs.txt')
        print('Documentation requirements installed successfully.')
    except sh.ErrorReturnCode as e:
        print(f'Error installing requirements: {e}', file=sys.stderr)
        sys.exit(1)