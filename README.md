# Hospital Shift Scheduler 1.0

Features
- Ability to trade shifts with a co-worker
- Ability to track number of night shifts, on calls, etc.
- Email updates when you have a night shift or on call duty
- Point system to ensure splitting of shifts is as fair as possible

Models
- user
- hospital
- shift
- blackout


User
has_many :shifts
has_many :blackouts

Hospital
has_many :shifts

Shift
belongs_to :user
belongs_to :hospital

Blackout
belongs_to :user