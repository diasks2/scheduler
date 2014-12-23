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

**User**
```ruby
class User
  has_many :shifts
  has_many :blackouts
end
```

**Hospital**
```ruby
class Hospital
  has_many :shifts
end
```

**Shift**
```ruby
class Shift
  belongs_to :user
  belongs_to :hospital
end
```

**Blackout**
```ruby
class Blackout
  belongs_to :user
end
```

Research
-http://fullcalendar.io/