alter table public.questions add column if not exists external_question_id text;
alter table public.questions add column if not exists university_scope text;

create unique index if not exists questions_external_question_id_uidx
  on public.questions (external_question_id)
  where external_question_id is not null;

create unique index if not exists units_subject_name_uidx
  on public.units (subject_id, name);

create unique index if not exists topics_unit_name_uidx
  on public.topics (unit_id, name);
;
