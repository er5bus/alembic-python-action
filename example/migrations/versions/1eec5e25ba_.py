"""test message

Revision ID: 1eec5e25ba
Revises: None
Create Date: 2023-04-03 21:12:20.664487

"""

# revision identifiers, used by Alembic.
revision = '1eec5e25ba'
down_revision = None

from alembic import op
import sqlalchemy as sa


def upgrade():
    op.create_table('table',
        sa.Column('pk', sa.Integer(), nullable=False),
        sa.Column('content', sa.String, nullable=True),
    )


def downgrade():
    op.drop_table("table")
