create table public.students (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text unique,
  course text default 'BDS',
  year text,
  created_at timestamptz not null default now()
);

create table public.subjects (
  id bigint generated always as identity primary key,
  name text not null,
  code text,
  year text,
  semester text,
  description text,
  created_at timestamptz not null default now()
);

create table public.units (
  id bigint generated always as identity primary key,
  subject_id bigint not null references public.subjects(id) on delete cascade,
  name text not null,
  order_number integer not null,
  unique(subject_id, order_number)
);

create table public.topics (
  id bigint generated always as identity primary key,
  unit_id bigint not null references public.units(id) on delete cascade,
  name text not null,
  order_number integer not null,
  description text,
  unique(unit_id, order_number)
);

create table public.resources (
  id bigint generated always as identity primary key,
  title text not null,
  resource_type text not null check (resource_type in ('senior_notes','textbook','article','reference')),
  description text,
  file_url text,
  source text,
  created_at timestamptz not null default now()
);

create table public.topic_resources (
  id bigint generated always as identity primary key,
  topic_id bigint not null references public.topics(id) on delete cascade,
  resource_id bigint not null references public.resources(id) on delete cascade,
  page_start integer,
  page_end integer,
  chapter text,
  section text,
  notes text,
  unique(topic_id, resource_id, page_start, page_end)
);

create table public.questions (
  id bigint generated always as identity primary key,
  question_text text not null,
  subject_id bigint references public.subjects(id) on delete set null,
  question_type text not null check (question_type in ('pyq','sourced','practice','ai_generated')),
  marks integer,
  year integer,
  exam text,
  source text,
  source_url text,
  verification_status text not null default 'unverified' check (verification_status in ('verified','unverified','generated')),
  created_at timestamptz not null default now()
);

create table public.question_topics (
  question_id bigint not null references public.questions(id) on delete cascade,
  topic_id bigint not null references public.topics(id) on delete cascade,
  primary key(question_id, topic_id)
);

create table public.exams (
  id bigint generated always as identity primary key,
  subject_id bigint references public.subjects(id) on delete set null,
  exam_name text not null,
  exam_type text,
  exam_date date not null,
  created_at timestamptz not null default now()
);

create table public.timetable (
  id bigint generated always as identity primary key,
  subject_id bigint references public.subjects(id) on delete set null,
  class_date date,
  day text,
  start_time time,
  end_time time,
  class_type text check (class_type in ('lecture','practical','clinical')),
  room text,
  created_at timestamptz not null default now()
);

create table public.topic_progress (
  id bigint generated always as identity primary key,
  student_id uuid not null references public.students(id) on delete cascade,
  topic_id bigint not null references public.topics(id) on delete cascade,
  status text not null default 'not_started' check (status in ('not_started','in_progress','completed')),
  completion_percentage numeric(5,2) not null default 0 check (completion_percentage between 0 and 100),
  last_studied_at timestamptz,
  total_time_spent integer not null default 0,
  unique(student_id, topic_id)
);

create table public.question_attempts (
  id bigint generated always as identity primary key,
  student_id uuid not null references public.students(id) on delete cascade,
  question_id bigint not null references public.questions(id) on delete cascade,
  selected_answer text,
  is_correct boolean,
  attempted_at timestamptz not null default now()
);

create table public.study_sessions (
  id bigint generated always as identity primary key,
  student_id uuid not null references public.students(id) on delete cascade,
  started_at timestamptz not null default now(),
  ended_at timestamptz,
  planned_duration integer,
  actual_duration integer,
  completed boolean not null default false
);

create table public.study_session_topics (
  session_id bigint not null references public.study_sessions(id) on delete cascade,
  topic_id bigint not null references public.topics(id) on delete cascade,
  time_spent integer not null default 0,
  primary key(session_id, topic_id)
);

create table public.ai_sessions (
  id bigint generated always as identity primary key,
  student_id uuid not null references public.students(id) on delete cascade,
  topic_id bigint references public.topics(id) on delete set null,
  session_type text not null check (session_type in ('explain','teach','summarize','mcq','viva','answer','page_explanation')),
  created_at timestamptz not null default now()
);

create table public.ai_messages (
  id bigint generated always as identity primary key,
  ai_session_id bigint not null references public.ai_sessions(id) on delete cascade,
  role text not null check (role in ('user','assistant','system')),
  message text not null,
  created_at timestamptz not null default now()
);

create index idx_units_subject on public.units(subject_id);
create index idx_topics_unit on public.topics(unit_id);
create index idx_topic_resources_topic on public.topic_resources(topic_id);
create index idx_questions_subject on public.questions(subject_id);
create index idx_question_topics_topic on public.question_topics(topic_id);
create index idx_exams_date on public.exams(exam_date);
create index idx_timetable_date on public.timetable(class_date);
create index idx_progress_student on public.topic_progress(student_id);
create index idx_attempts_student on public.question_attempts(student_id);
create index idx_sessions_student on public.study_sessions(student_id);
create index idx_ai_sessions_student on public.ai_sessions(student_id);

alter table public.students enable row level security;
alter table public.subjects enable row level security;
alter table public.units enable row level security;
alter table public.topics enable row level security;
alter table public.resources enable row level security;
alter table public.topic_resources enable row level security;
alter table public.questions enable row level security;
alter table public.question_topics enable row level security;
alter table public.exams enable row level security;
alter table public.timetable enable row level security;
alter table public.topic_progress enable row level security;
alter table public.question_attempts enable row level security;
alter table public.study_sessions enable row level security;
alter table public.study_session_topics enable row level security;
alter table public.ai_sessions enable row level security;
alter table public.ai_messages enable row level security;

create policy "public read subjects" on public.subjects for select using (true);
create policy "public read units" on public.units for select using (true);
create policy "public read topics" on public.topics for select using (true);
create policy "public read resources" on public.resources for select using (true);
create policy "public read topic resources" on public.topic_resources for select using (true);
create policy "public read questions" on public.questions for select using (true);
create policy "public read question topics" on public.question_topics for select using (true);
create policy "public read exams" on public.exams for select using (true);
create policy "public read timetable" on public.timetable for select using (true);;
