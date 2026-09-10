-- BDS Ai System Phase 1: reproducible database migration
-- Generated from BDS_DYP_DIRECT_QUESTION_DATABASE.xlsx.
-- Existing remote database already contains this data; this file versions it in Git.
-- Do not label the comparable-BDS corpus as official DYP PYQs.

alter table public.questions add column if not exists external_question_id text;
alter table public.questions add column if not exists university_scope text;
create unique index if not exists questions_external_question_id_uidx on public.questions (external_question_id) where external_question_id is not null;
create unique index if not exists units_subject_name_uidx on public.units (subject_id, name);
create unique index if not exists topics_unit_name_uidx on public.topics (unit_id, name);

begin;

insert into public.units(subject_id,name,order_number) select 3,'Introduction to Pathology',1 where not exists (select 1 from public.units where subject_id=3 and name='Introduction to Pathology');
insert into public.units(subject_id,name,order_number) select 3,'Cell Structure and Function, Cellular Ageing',2 where not exists (select 1 from public.units where subject_id=3 and name='Cell Structure and Function, Cellular Ageing');
insert into public.units(subject_id,name,order_number) select 3,'Cellular Adaptations',3 where not exists (select 1 from public.units where subject_id=3 and name='Cellular Adaptations');
insert into public.units(subject_id,name,order_number) select 3,'Cell Injury: Etiology and Pathogenesis',4 where not exists (select 1 from public.units where subject_id=3 and name='Cell Injury: Etiology and Pathogenesis');
insert into public.units(subject_id,name,order_number) select 3,'Morphology of Cell Injury: Degenerations and Cell Death',5 where not exists (select 1 from public.units where subject_id=3 and name='Morphology of Cell Injury: Degenerations and Cell Death');
insert into public.units(subject_id,name,order_number) select 3,'Intracellular Accumulations',6 where not exists (select 1 from public.units where subject_id=3 and name='Intracellular Accumulations');
insert into public.units(subject_id,name,order_number) select 3,'Amyloidosis',7 where not exists (select 1 from public.units where subject_id=3 and name='Amyloidosis');
insert into public.units(subject_id,name,order_number) select 3,'Genetic and Paediatric Diseases',8 where not exists (select 1 from public.units where subject_id=3 and name='Genetic and Paediatric Diseases');
insert into public.units(subject_id,name,order_number) select 3,'Environmental, Nutritional and Vitamin Deficiency Disorders',9 where not exists (select 1 from public.units where subject_id=3 and name='Environmental, Nutritional and Vitamin Deficiency Disorders');
insert into public.units(subject_id,name,order_number) select 3,'Inflammation: Acute',10 where not exists (select 1 from public.units where subject_id=3 and name='Inflammation: Acute');
insert into public.units(subject_id,name,order_number) select 3,'Inflammation: Chronic and Granulomatous',11 where not exists (select 1 from public.units where subject_id=3 and name='Inflammation: Chronic and Granulomatous');
insert into public.units(subject_id,name,order_number) select 3,'Healing of Tissues',12 where not exists (select 1 from public.units where subject_id=3 and name='Healing of Tissues');
insert into public.units(subject_id,name,order_number) select 3,'Infectious and Parasitic Diseases',13 where not exists (select 1 from public.units where subject_id=3 and name='Infectious and Parasitic Diseases');
insert into public.units(subject_id,name,order_number) select 3,'Diseases of Immunity including AIDS',14 where not exists (select 1 from public.units where subject_id=3 and name='Diseases of Immunity including AIDS');
insert into public.units(subject_id,name,order_number) select 3,'Derangements of Body Fluids',15 where not exists (select 1 from public.units where subject_id=3 and name='Derangements of Body Fluids');
insert into public.units(subject_id,name,order_number) select 3,'Blood Flow Volume Disorders',16 where not exists (select 1 from public.units where subject_id=3 and name='Blood Flow Volume Disorders');
insert into public.units(subject_id,name,order_number) select 3,'Obstructive Haemodynamic Derangements',17 where not exists (select 1 from public.units where subject_id=3 and name='Obstructive Haemodynamic Derangements');
insert into public.units(subject_id,name,order_number) select 3,'General Aspects of Neoplasia',18 where not exists (select 1 from public.units where subject_id=3 and name='General Aspects of Neoplasia');
insert into public.units(subject_id,name,order_number) select 3,'Etiology and Pathogenesis of Neoplasia',19 where not exists (select 1 from public.units where subject_id=3 and name='Etiology and Pathogenesis of Neoplasia');
insert into public.units(subject_id,name,order_number) select 3,'Host-Tumour Relationship and Diagnosis of Neoplasms',20 where not exists (select 1 from public.units where subject_id=3 and name='Host-Tumour Relationship and Diagnosis of Neoplasms');
insert into public.units(subject_id,name,order_number) select 3,'Common Specific Tumours',21 where not exists (select 1 from public.units where subject_id=3 and name='Common Specific Tumours');
insert into public.units(subject_id,name,order_number) select 3,'Disorders of Erythroid Series: Anaemias',22 where not exists (select 1 from public.units where subject_id=3 and name='Disorders of Erythroid Series: Anaemias');
insert into public.units(subject_id,name,order_number) select 3,'Platelets and Bleeding Disorders',23 where not exists (select 1 from public.units where subject_id=3 and name='Platelets and Bleeding Disorders');
insert into public.units(subject_id,name,order_number) select 3,'Diseases of Leucocytes and Lymphoid Tissues',24 where not exists (select 1 from public.units where subject_id=3 and name='Diseases of Leucocytes and Lymphoid Tissues');
insert into public.units(subject_id,name,order_number) select 3,'Diseases of Cardiovascular System',25 where not exists (select 1 from public.units where subject_id=3 and name='Diseases of Cardiovascular System');
insert into public.units(subject_id,name,order_number) select 3,'Diseases of Oral Cavity and Salivary Glands',26 where not exists (select 1 from public.units where subject_id=3 and name='Diseases of Oral Cavity and Salivary Glands');
insert into public.units(subject_id,name,order_number) select 3,'Jaundice, Hepatitis and Cirrhosis',27 where not exists (select 1 from public.units where subject_id=3 and name='Jaundice, Hepatitis and Cirrhosis');
insert into public.units(subject_id,name,order_number) select 3,'Hypertension and its Consequences',28 where not exists (select 1 from public.units where subject_id=3 and name='Hypertension and its Consequences');
insert into public.units(subject_id,name,order_number) select 3,'Diabetes Mellitus and its Complications',29 where not exists (select 1 from public.units where subject_id=3 and name='Diabetes Mellitus and its Complications');
insert into public.units(subject_id,name,order_number) select 3,'Common Diseases of Bones, Cartilage and Joints',30 where not exists (select 1 from public.units where subject_id=3 and name='Common Diseases of Bones, Cartilage and Joints');
insert into public.units(subject_id,name,order_number) select 1,'General Pharmacology',1 where not exists (select 1 from public.units where subject_id=1 and name='General Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Drug Dosage Forms',2 where not exists (select 1 from public.units where subject_id=1 and name='Drug Dosage Forms');
insert into public.units(subject_id,name,order_number) select 1,'Autonomic Pharmacology',3 where not exists (select 1 from public.units where subject_id=1 and name='Autonomic Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Renal Pharmacology',4 where not exists (select 1 from public.units where subject_id=1 and name='Renal Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Drugs Affecting Cardiovascular Function',5 where not exists (select 1 from public.units where subject_id=1 and name='Drugs Affecting Cardiovascular Function');
insert into public.units(subject_id,name,order_number) select 1,'Drugs Acting on Central Nervous System',6 where not exists (select 1 from public.units where subject_id=1 and name='Drugs Acting on Central Nervous System');
insert into public.units(subject_id,name,order_number) select 1,'Autacoids and Respiratory System',7 where not exists (select 1 from public.units where subject_id=1 and name='Autacoids and Respiratory System');
insert into public.units(subject_id,name,order_number) select 1,'Gastrointestinal Pharmacology',8 where not exists (select 1 from public.units where subject_id=1 and name='Gastrointestinal Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Drugs Affecting Coagulation and Blood Formation',9 where not exists (select 1 from public.units where subject_id=1 and name='Drugs Affecting Coagulation and Blood Formation');
insert into public.units(subject_id,name,order_number) select 1,'Endocrine Pharmacology',10 where not exists (select 1 from public.units where subject_id=1 and name='Endocrine Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Chemotherapy',11 where not exists (select 1 from public.units where subject_id=1 and name='Chemotherapy');
insert into public.units(subject_id,name,order_number) select 1,'Dental Pharmacology',12 where not exists (select 1 from public.units where subject_id=1 and name='Dental Pharmacology');
insert into public.units(subject_id,name,order_number) select 1,'Miscellaneous Drugs',13 where not exists (select 1 from public.units where subject_id=1 and name='Miscellaneous Drugs');
insert into public.units(subject_id,name,order_number) select 4,'Question-bank topic index (textbook chapter structure pending verified import)',1 where not exists (select 1 from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)');
insert into public.units(subject_id,name,order_number) select 5,'Question-bank topic index (prescribed textbook structure pending verification)',1 where not exists (select 1 from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)');

insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Introduction to Pathology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Cell Structure and Function, Cellular Ageing' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Cellular Adaptations' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Cell Injury: Etiology and Pathogenesis' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Morphology of Cell Injury: Degenerations and Cell Death' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Intracellular Accumulations' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Amyloidosis' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Genetic and Paediatric Diseases' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Inflammation: Acute' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Inflammation: Chronic and Granulomatous' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Healing of Tissues' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Infectious and Parasitic Diseases' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Diseases of Immunity including AIDS' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Derangements of Body Fluids' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Blood Flow Volume Disorders' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Obstructive Haemodynamic Derangements' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='General Aspects of Neoplasia' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Etiology and Pathogenesis of Neoplasia' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Host-Tumour Relationship and Diagnosis of Neoplasms' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Common Specific Tumours' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Disorders of Erythroid Series: Anaemias' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Platelets and Bleeding Disorders' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Diseases of Leucocytes and Lymphoid Tissues' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Diseases of Cardiovascular System' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Diseases of Oral Cavity and Salivary Glands' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Jaundice, Hepatitis and Cirrhosis' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Hypertension and its Consequences' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Diabetes Mellitus and its Complications' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=3 and name='Common Diseases of Bones, Cartilage and Joints' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='General Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Drug Dosage Forms' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Autonomic Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Renal Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Drugs Affecting Cardiovascular Function' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Drugs Acting on Central Nervous System' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Autacoids and Respiratory System' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Gastrointestinal Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Drugs Affecting Coagulation and Blood Formation' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Endocrine Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Chemotherapy' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Dental Pharmacology' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,name,1,'Verified textbook chapter heading; page-start metadata is maintained in src/data/textbooks.ts.' from public.units where subject_id=1 and name='Miscellaneous Drugs' on conflict (unit_id,name) do nothing;
insert into public.topics(unit_id,name,order_number,description) select id,'Cell injury & adaptation',1,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Cell Injury: Etiology and Pathogenesis' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Pigments & amyloidosis',2,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Amyloidosis' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Nutrition & genetics',3,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Inflammation',4,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Inflammation: Acute' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Tuberculosis & leprosy',5,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Infectious and Parasitic Diseases' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Syphilis & oral infections',6,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Infectious and Parasitic Diseases' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Healing & repair',7,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Healing of Tissues' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Immunity',8,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Diseases of Immunity including AIDS' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Systemic & oral pathology',9,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Diseases of Oral Cavity and Salivary Glands' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Anemia',10,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=3 and name='Disorders of Erythroid Series: Anaemias' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'General pharmacology',1,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='General Pharmacology' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Autonomic nervous system',2,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Autonomic Pharmacology' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Cardiovascular',3,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Drugs Affecting Cardiovascular Function' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'CNS',4,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Drugs Acting on Central Nervous System' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Autacoids',5,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Autacoids and Respiratory System' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Gastrointestinal',6,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Gastrointestinal Pharmacology' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Hormones',7,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Endocrine Pharmacology' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Chemotherapy',8,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Chemotherapy' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Dental pharmacology',9,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Dental Pharmacology' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Poisoning & emergencies',10,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Miscellaneous Drugs' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Miscellaneous',11,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=1 and name='Miscellaneous Drugs' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Bacterial morphology',1,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Sterilization',2,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Culture media',3,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Staining',4,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Bacterial genetics',5,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Bacteriology',6,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Mycology',7,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Mycobacteria',8,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Virology',9,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Immunology',10,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Oral microbiology',11,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Parasitology',12,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Dental infection control',13,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Infection control',14,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=4 and name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Structure & properties',1,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Dental cements',2,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Dental amalgam',3,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Direct gold',4,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Composites & bonding',5,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Impression materials',6,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Gypsum',7,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Waxes',8,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Investments',9,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Casting',10,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Casting alloys',11,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Finishing & polishing',12,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.topics(unit_id,name,order_number,description) select id,'Metal joining',13,'Question-bank grouping from the current 197-question corpus.' from public.units where subject_id=5 and name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict (unit_id,name) do update set description=excluded.description;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define necrosis and classify its types with examples.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0001','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain the causes and mechanisms of cell injury.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0002','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss reversible and irreversible cell injury.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0003','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain free-radical injury.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0004','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe coagulative necrosis with examples.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0005','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe caseous necrosis and its gross and microscopic features.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0006','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define gangrene and differentiate dry and wet gangrene.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0007','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe fatty change of liver, including morphology, causes and mechanism.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0008','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe calcification and give examples.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0009','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define amyloid and describe its nature and sources.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0010','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe special stains used for amyloid.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0011','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Name major fibril proteins found in amyloid.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0012','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss clinical manifestations of vitamin A deficiency.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0013','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe scurvy and its manifestations.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0014','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe rickets and its skeletal lesions.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0015','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss protein-energy malnutrition.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0016','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on Down syndrome.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0017','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on Turner syndrome.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0018','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define inflammation and describe the vascular events of acute inflammation.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0019','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define inflammation and describe the cellular events of acute inflammation.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0020','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss chemical mediators of inflammation and their actions.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0021','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain phagocytosis and chemotaxis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0022','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe granulomatous inflammation with examples.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0023','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define granuloma and give examples.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0024','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on giant cells.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0025','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe the pathogenesis and morphology of primary tuberculosis.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0026','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe secondary tuberculosis and its complications.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0027','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe the laboratory diagnosis of tuberculosis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0028','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify leprosy and describe tuberculoid leprosy.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0029','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe microscopic features of lepromatous leprosy.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0030','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe oral manifestations of syphilis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0031','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify syphilis and describe congenital syphilis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0032','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe healing by primary and secondary intention.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0033','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss factors influencing wound healing.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0034','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe fracture healing and factors interfering with it.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0035','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain cell-mediated immunity.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0036','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe type I hypersensitivity reaction and anaphylaxis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0037','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe type III hypersensitivity reaction.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0038','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe diabetes mellitus, laboratory diagnosis and complications.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0039','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe pleomorphic adenoma of salivary glands.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0040','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe leukoplakia.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0041','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe osteosarcoma with morphology and radiographic findings.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0042','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe chronic and pyogenic osteomyelitis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0043','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe ameloblastoma and its microscopic features.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/general-pathology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0044','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe the morphology and structures of a bacterial cell with a labelled diagram.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0045','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe the bacterial cell wall.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0046','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify bacteria morphologically.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0047','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on bacterial capsule.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0048','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on bacterial spores.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0049','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe flagella.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0050','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define sterilization and classify methods.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0051','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe dry heat sterilization in dental practice.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0052','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe moist heat sterilization and autoclave.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0053','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe chemical methods of sterilization.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0054','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Differentiate antiseptics and disinfectants.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0055','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on hot air oven.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0056','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on autoclave.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0057','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on chemical disinfectants.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0058','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define culture media and classify them with examples.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0059','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe selective, enriched and enrichment media.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0060','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe anaerobic culture methods.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0061','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on transport media.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0062','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe acid-fast staining / Ziehl-Neelsen stain.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0063','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'List various staining techniques in microbiology.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0064','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe bacterial gene transfer and its methods.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0065','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain transduction.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0066','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on bacterial drug resistance.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0067','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on PCR.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0068','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe bacterial growth curve.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0069','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on Koch''s postulates.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0070','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Write a note on urease test.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0071','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe Candida albicans and its clinical significance.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0072','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe mucormycosis and its laboratory diagnosis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0073','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe laboratory diagnosis of pulmonary tuberculosis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0074','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe structure, laboratory diagnosis and prophylaxis of hepatitis B virus infection.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0075','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe structure of an antibody with a labelled diagram.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0076','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe hypersensitivity reactions.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0077','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'List oral infections caused by non-sporing anaerobes.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0078','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'List intestinal helminths causing human infections.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0079','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe infection-control measures in dental practice.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/micro-biology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0080','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain routes of drug administration with advantages and disadvantages.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0081','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain bioavailability and factors affecting it.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0082','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain biotransformation, its reactions and clinical importance.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0083','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain first-pass metabolism, enzyme induction and enzyme inhibition.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0084','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss factors modifying drug action.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0085','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe adverse drug reactions and their types.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0086','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain plasma protein binding and its clinical significance.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0087','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain drug tolerance and tachyphylaxis.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0088','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain drug antagonism and synergism with examples.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0089','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain drug dependence.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0090','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define first-order and zero-order kinetics.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0091','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define therapeutic index and give examples of drugs with narrow therapeutic index.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0092','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify cholinergic drugs and discuss neostigmine.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0093','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain treatment of organophosphorus poisoning and rationale for oximes.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0094','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify anticholinergic drugs and discuss atropine.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0095','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe skeletal muscle relaxants and their uses/adverse effects.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0096','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify adrenergic drugs and discuss adrenaline.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0097','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify beta blockers and discuss propranolol.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0098','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antihypertensive drugs and discuss ACE inhibitors.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0099','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss calcium-channel blockers: actions, uses and adverse effects.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0100','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antianginal drugs and discuss nitrates.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0101','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe digoxin: mechanism, uses, toxicity and adverse effects.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0102','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antiarrhythmic drugs.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0103','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe plasma expanders.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0104','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify local anaesthetics and discuss lignocaine.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0105','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe techniques of local anaesthesia and indications.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0106','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify general anaesthetics and describe stages of general anaesthesia.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0107','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify benzodiazepines and discuss diazepam.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0108','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antiepileptic drugs and discuss phenytoin.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0109','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe management of convulsions precipitated during tooth extraction.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0110','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify opioid analgesics and discuss morphine.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0111','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify NSAIDs and discuss aspirin.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0112','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss ibuprofen and its mechanism and uses.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0113','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe acute paracetamol toxicity and its treatment.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0114','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify H1 antihistamines and discuss newer non-sedating agents.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0115','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe iron absorption and iron preparations.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0116','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe drugs used to control bleeding.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0117','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify anticoagulants and discuss warfarin.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0118','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify drugs used in peptic ulcer and discuss proton-pump inhibitors.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0119','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify purgatives and discuss saline purgatives.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0120','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antacids and discuss sodium bicarbonate.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0121','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify diuretics and compare furosemide with potassium-sparing diuretics.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0122','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antidiabetic drugs and discuss oral hypoglycaemic agents.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0123','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe insulin preparations, actions and adverse effects.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0124','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify corticosteroids and discuss therapeutic uses/adverse effects.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0125','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe glucocorticoid use in dentistry.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0126','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antimicrobial agents by mechanism and discuss antimicrobial resistance.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0127','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify penicillins and discuss a commonly used dental penicillin.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0128','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify tetracyclines and discuss their adverse effects and contraindications.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0129','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe aminoglycosides, especially gentamicin.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0130','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antitubercular drugs and describe a standard regimen.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0131','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe fluoride pharmacology, anticaries uses and toxicity.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0132','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe mouthwashes and their clinical uses.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0133','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define disclosing agents and discuss erythrosine.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0134','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe dental desensitizing agents.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0135','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe treatment of anaphylactic shock.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0136','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe treatment of organophosphorus poisoning.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0137','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain the use of deferoxamine in iron poisoning.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0138','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify antiseptics and discuss phenol and its dental uses.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0139','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe antiseptics and disinfectants used in dental practice.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/pharmacology/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0140','Comparable BDS corpus'
from public.subjects where name='Pharmacology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain stress-strain relationship and mechanical properties.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0141','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define modulus of elasticity.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0142','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain hardness and methods of hardness testing.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0143','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain thermal expansion and coefficient of thermal expansion.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0144','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain wetting and contact angle.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0145','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain biocompatibility and evaluation tests.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0146','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain galvanism.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Medium','Repeated/topic-wise BDS question bank',null,'Q0147','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify dental cements and discuss zinc phosphate cement.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0148','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe glass ionomer cement: composition, setting reaction, properties and uses.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0149','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss resin-modified glass ionomer cement.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0150','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe zinc polycarboxylate cement.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0151','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe zinc oxide eugenol cement.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0152','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe calcium hydroxide and its uses.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0153','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss luting cements and ideal requirements.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0154','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify dental amalgam alloys and discuss composition, properties and manipulation.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0155','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Compare high-copper and low-copper amalgam alloys.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0156','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe setting reactions of high-copper amalgam and the gamma-2 phase.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0157','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe trituration and manipulation of amalgam.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0158','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss mercury toxicity and mercury hygiene.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0159','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain delayed expansion of amalgam.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0160','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe direct filling gold and its types and manipulation.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0161','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe gold foil and degassing.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0162','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify composite resins and describe their components.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0163','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss light-cured composite resins.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0164','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain acid-etch technique and its mechanism.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0165','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe enamel and dentin bonding agents.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0166','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain sandwich technique.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0167','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe hybrid and microfilled composites.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0168','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify impression materials and discuss impression compound.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0169','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe zinc oxide eugenol impression paste.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0170','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe irreversible hydrocolloids: composition, manipulation and properties.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0171','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe reversible hydrocolloids and wet-field technique.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0172','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify elastomeric impression materials and discuss addition silicone.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0173','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss condensation silicone impression material.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0174','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain syneresis and imbibition.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0175','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss polyether impression material.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0176','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify gypsum products and discuss dental plaster.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0177','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe dental stone and its setting reaction.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0178','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain factors affecting setting time of gypsum.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0179','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Compare alpha and beta hemihydrate.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0180','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify dental waxes and discuss inlay casting wax.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0181','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe wax distortion and its prevention.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0182','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify investment materials and discuss gypsum-bonded investments.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0183','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss phosphate-bonded investment materials.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0184','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe complete casting procedure for an inlay restoration.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0185','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe casting defects and their prevention.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','Very High','Repeated/topic-wise BDS question bank',null,'Q0186','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain casting shrinkage and methods of compensation.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0187','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify dental casting alloys and discuss gold alloys.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0188','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Discuss cobalt-chromium and nickel-chromium alloys.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0189','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify abrasive and polishing agents and discuss finishing/polishing.',id,'sourced',10,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0190','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe soldering and welding and compare them.',id,'sourced',5,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0191','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe flux and antiflux.',id,'sourced',2,null,null,'Excel BDS 2nd Year Question Bank','https://excelbds.com/question-bank/2nd-year/dental-materials/','unverified','High','Repeated/topic-wise BDS question bank',null,'Q0192','Comparable BDS corpus'
from public.subjects where name='Dental Materials'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Classify anemia and discuss microcytic hypochromic anemia including pathogenesis, smear findings and clinical features.',id,'sourced',10,null,null,'TNMGRMU BDS II-year indexed question paper','https://www.tnmgrmu.ac.in/examination/question-bank/dental-e-questions/e-questions-b-d-s-second-year/','unverified','Very High','Appears in indexed February 2025 paper','Tamil Nadu Dr. M.G.R. Medical University (TNMGRMU)','Q0193','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Explain four chemical mediators of inflammation.',id,'sourced',10,null,null,'TNMGRMU BDS II-year indexed question paper','https://www.tnmgrmu.ac.in/examination/question-bank/dental-e-questions/e-questions-b-d-s-second-year/','unverified','Very High','Appears in indexed August 2016 paper','Tamil Nadu Dr. M.G.R. Medical University (TNMGRMU)','Q0194','Comparable BDS corpus'
from public.subjects where name='General Pathology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Define and classify sterilization and explain heat methods of sterilization.',id,'sourced',10,null,null,'TNMGRMU BDS II-year indexed question paper','https://www.tnmgrmu.ac.in/examination/question-bank/dental-e-questions/e-questions-b-d-s-second-year/','unverified','Very High','Appears in indexed February 2025 paper','Tamil Nadu Dr. M.G.R. Medical University (TNMGRMU)','Q0195','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe infection-control measures in dental practice.',id,'sourced',5,null,null,'TNMGRMU BDS II-year indexed question paper','https://www.tnmgrmu.ac.in/examination/question-bank/dental-e-questions/e-questions-b-d-s-second-year/','unverified','Very High','Appears in indexed February 2025 paper','Tamil Nadu Dr. M.G.R. Medical University (TNMGRMU)','Q0196','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.questions
(question_text,subject_id,question_type,marks,year,exam,source,source_url,verification_status,importance_tier,importance_basis,university,external_question_id,university_scope)
select 'Describe hepatitis B virus structure, laboratory diagnosis and prophylaxis.',id,'sourced',10,null,null,'TNMGRMU BDS II-year indexed question paper','https://www.tnmgrmu.ac.in/examination/question-bank/dental-e-questions/e-questions-b-d-s-second-year/','unverified','Very High','Appears in indexed August 2016 paper','Tamil Nadu Dr. M.G.R. Medical University (TNMGRMU)','Q0197','Comparable BDS corpus'
from public.subjects where name='Microbiology'
on conflict (external_question_id) do update set
question_text=excluded.question_text,subject_id=excluded.subject_id,question_type=excluded.question_type,
marks=excluded.marks,year=excluded.year,exam=excluded.exam,source=excluded.source,source_url=excluded.source_url,
verification_status=excluded.verification_status,importance_tier=excluded.importance_tier,importance_basis=excluded.importance_basis,
university=excluded.university,university_scope=excluded.university_scope;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0001' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0002' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0003' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0004' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0005' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0006' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0007' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0008' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cell injury & adaptation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0009' and q.subject_id=3 and u.name='Cell Injury: Etiology and Pathogenesis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Pigments & amyloidosis' join public.units u on u.id=t.unit_id where q.external_question_id='Q0010' and q.subject_id=3 and u.name='Amyloidosis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Pigments & amyloidosis' join public.units u on u.id=t.unit_id where q.external_question_id='Q0011' and q.subject_id=3 and u.name='Amyloidosis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Pigments & amyloidosis' join public.units u on u.id=t.unit_id where q.external_question_id='Q0012' and q.subject_id=3 and u.name='Amyloidosis' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0013' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0014' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0015' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0016' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0017' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Nutrition & genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0018' and q.subject_id=3 and u.name='Environmental, Nutritional and Vitamin Deficiency Disorders' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0019' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0020' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0021' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0022' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0023' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0024' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0025' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Tuberculosis & leprosy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0026' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Tuberculosis & leprosy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0027' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Tuberculosis & leprosy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0028' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Tuberculosis & leprosy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0029' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Tuberculosis & leprosy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0030' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Syphilis & oral infections' join public.units u on u.id=t.unit_id where q.external_question_id='Q0031' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Syphilis & oral infections' join public.units u on u.id=t.unit_id where q.external_question_id='Q0032' and q.subject_id=3 and u.name='Infectious and Parasitic Diseases' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Healing & repair' join public.units u on u.id=t.unit_id where q.external_question_id='Q0033' and q.subject_id=3 and u.name='Healing of Tissues' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Healing & repair' join public.units u on u.id=t.unit_id where q.external_question_id='Q0034' and q.subject_id=3 and u.name='Healing of Tissues' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Healing & repair' join public.units u on u.id=t.unit_id where q.external_question_id='Q0035' and q.subject_id=3 and u.name='Healing of Tissues' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Immunity' join public.units u on u.id=t.unit_id where q.external_question_id='Q0036' and q.subject_id=3 and u.name='Diseases of Immunity including AIDS' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Immunity' join public.units u on u.id=t.unit_id where q.external_question_id='Q0037' and q.subject_id=3 and u.name='Diseases of Immunity including AIDS' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Immunity' join public.units u on u.id=t.unit_id where q.external_question_id='Q0038' and q.subject_id=3 and u.name='Diseases of Immunity including AIDS' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0039' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0040' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0041' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0042' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0043' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Systemic & oral pathology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0044' and q.subject_id=3 and u.name='Diseases of Oral Cavity and Salivary Glands' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0045' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0046' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0047' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0048' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0049' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial morphology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0050' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0051' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0052' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0053' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0054' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0055' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0056' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0057' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0058' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Culture media' join public.units u on u.id=t.unit_id where q.external_question_id='Q0059' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Culture media' join public.units u on u.id=t.unit_id where q.external_question_id='Q0060' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Culture media' join public.units u on u.id=t.unit_id where q.external_question_id='Q0061' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Culture media' join public.units u on u.id=t.unit_id where q.external_question_id='Q0062' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Staining' join public.units u on u.id=t.unit_id where q.external_question_id='Q0063' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Staining' join public.units u on u.id=t.unit_id where q.external_question_id='Q0064' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0065' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0066' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0067' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacterial genetics' join public.units u on u.id=t.unit_id where q.external_question_id='Q0068' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacteriology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0069' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacteriology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0070' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Bacteriology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0071' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Mycology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0072' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Mycology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0073' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Mycobacteria' join public.units u on u.id=t.unit_id where q.external_question_id='Q0074' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Virology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0075' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Immunology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0076' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Immunology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0077' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Oral microbiology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0078' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Parasitology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0079' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental infection control' join public.units u on u.id=t.unit_id where q.external_question_id='Q0080' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0081' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0082' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0083' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0084' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0085' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0086' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0087' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0088' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0089' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0090' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0091' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='General pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0092' and q.subject_id=1 and u.name='General Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0093' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0094' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0095' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0096' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0097' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autonomic nervous system' join public.units u on u.id=t.unit_id where q.external_question_id='Q0098' and q.subject_id=1 and u.name='Autonomic Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0099' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0100' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0101' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0102' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0103' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Cardiovascular' join public.units u on u.id=t.unit_id where q.external_question_id='Q0104' and q.subject_id=1 and u.name='Drugs Affecting Cardiovascular Function' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0105' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0106' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0107' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0108' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0109' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0110' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0111' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0112' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0113' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='CNS' join public.units u on u.id=t.unit_id where q.external_question_id='Q0114' and q.subject_id=1 and u.name='Drugs Acting on Central Nervous System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autacoids' join public.units u on u.id=t.unit_id where q.external_question_id='Q0115' and q.subject_id=1 and u.name='Autacoids and Respiratory System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autacoids' join public.units u on u.id=t.unit_id where q.external_question_id='Q0116' and q.subject_id=1 and u.name='Autacoids and Respiratory System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autacoids' join public.units u on u.id=t.unit_id where q.external_question_id='Q0117' and q.subject_id=1 and u.name='Autacoids and Respiratory System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Autacoids' join public.units u on u.id=t.unit_id where q.external_question_id='Q0118' and q.subject_id=1 and u.name='Autacoids and Respiratory System' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gastrointestinal' join public.units u on u.id=t.unit_id where q.external_question_id='Q0119' and q.subject_id=1 and u.name='Gastrointestinal Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gastrointestinal' join public.units u on u.id=t.unit_id where q.external_question_id='Q0120' and q.subject_id=1 and u.name='Gastrointestinal Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gastrointestinal' join public.units u on u.id=t.unit_id where q.external_question_id='Q0121' and q.subject_id=1 and u.name='Gastrointestinal Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gastrointestinal' join public.units u on u.id=t.unit_id where q.external_question_id='Q0122' and q.subject_id=1 and u.name='Gastrointestinal Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Hormones' join public.units u on u.id=t.unit_id where q.external_question_id='Q0123' and q.subject_id=1 and u.name='Endocrine Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Hormones' join public.units u on u.id=t.unit_id where q.external_question_id='Q0124' and q.subject_id=1 and u.name='Endocrine Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Hormones' join public.units u on u.id=t.unit_id where q.external_question_id='Q0125' and q.subject_id=1 and u.name='Endocrine Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Hormones' join public.units u on u.id=t.unit_id where q.external_question_id='Q0126' and q.subject_id=1 and u.name='Endocrine Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Chemotherapy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0127' and q.subject_id=1 and u.name='Chemotherapy' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Chemotherapy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0128' and q.subject_id=1 and u.name='Chemotherapy' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Chemotherapy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0129' and q.subject_id=1 and u.name='Chemotherapy' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Chemotherapy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0130' and q.subject_id=1 and u.name='Chemotherapy' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Chemotherapy' join public.units u on u.id=t.unit_id where q.external_question_id='Q0131' and q.subject_id=1 and u.name='Chemotherapy' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0132' and q.subject_id=1 and u.name='Dental Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0133' and q.subject_id=1 and u.name='Dental Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0134' and q.subject_id=1 and u.name='Dental Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental pharmacology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0135' and q.subject_id=1 and u.name='Dental Pharmacology' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Poisoning & emergencies' join public.units u on u.id=t.unit_id where q.external_question_id='Q0136' and q.subject_id=1 and u.name='Miscellaneous Drugs' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Poisoning & emergencies' join public.units u on u.id=t.unit_id where q.external_question_id='Q0137' and q.subject_id=1 and u.name='Miscellaneous Drugs' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Poisoning & emergencies' join public.units u on u.id=t.unit_id where q.external_question_id='Q0138' and q.subject_id=1 and u.name='Miscellaneous Drugs' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Miscellaneous' join public.units u on u.id=t.unit_id where q.external_question_id='Q0139' and q.subject_id=1 and u.name='Miscellaneous Drugs' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Miscellaneous' join public.units u on u.id=t.unit_id where q.external_question_id='Q0140' and q.subject_id=1 and u.name='Miscellaneous Drugs' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0141' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0142' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0143' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0144' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0145' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0146' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Structure & properties' join public.units u on u.id=t.unit_id where q.external_question_id='Q0147' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0148' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0149' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0150' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0151' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0152' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0153' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental cements' join public.units u on u.id=t.unit_id where q.external_question_id='Q0154' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0155' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0156' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0157' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0158' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0159' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Dental amalgam' join public.units u on u.id=t.unit_id where q.external_question_id='Q0160' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Direct gold' join public.units u on u.id=t.unit_id where q.external_question_id='Q0161' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Direct gold' join public.units u on u.id=t.unit_id where q.external_question_id='Q0162' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0163' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0164' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0165' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0166' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0167' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Composites & bonding' join public.units u on u.id=t.unit_id where q.external_question_id='Q0168' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0169' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0170' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0171' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0172' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0173' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0174' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0175' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Impression materials' join public.units u on u.id=t.unit_id where q.external_question_id='Q0176' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gypsum' join public.units u on u.id=t.unit_id where q.external_question_id='Q0177' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gypsum' join public.units u on u.id=t.unit_id where q.external_question_id='Q0178' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gypsum' join public.units u on u.id=t.unit_id where q.external_question_id='Q0179' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Gypsum' join public.units u on u.id=t.unit_id where q.external_question_id='Q0180' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Waxes' join public.units u on u.id=t.unit_id where q.external_question_id='Q0181' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Waxes' join public.units u on u.id=t.unit_id where q.external_question_id='Q0182' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Investments' join public.units u on u.id=t.unit_id where q.external_question_id='Q0183' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Investments' join public.units u on u.id=t.unit_id where q.external_question_id='Q0184' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Casting' join public.units u on u.id=t.unit_id where q.external_question_id='Q0185' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Casting' join public.units u on u.id=t.unit_id where q.external_question_id='Q0186' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Casting' join public.units u on u.id=t.unit_id where q.external_question_id='Q0187' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Casting alloys' join public.units u on u.id=t.unit_id where q.external_question_id='Q0188' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Casting alloys' join public.units u on u.id=t.unit_id where q.external_question_id='Q0189' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Finishing & polishing' join public.units u on u.id=t.unit_id where q.external_question_id='Q0190' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Metal joining' join public.units u on u.id=t.unit_id where q.external_question_id='Q0191' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Metal joining' join public.units u on u.id=t.unit_id where q.external_question_id='Q0192' and q.subject_id=5 and u.name='Question-bank topic index (prescribed textbook structure pending verification)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Anemia' join public.units u on u.id=t.unit_id where q.external_question_id='Q0193' and q.subject_id=3 and u.name='Disorders of Erythroid Series: Anaemias' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Inflammation' join public.units u on u.id=t.unit_id where q.external_question_id='Q0194' and q.subject_id=3 and u.name='Inflammation: Acute' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Sterilization' join public.units u on u.id=t.unit_id where q.external_question_id='Q0195' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Infection control' join public.units u on u.id=t.unit_id where q.external_question_id='Q0196' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;
insert into public.question_topics(question_id,topic_id) select q.id,t.id from public.questions q join public.topics t on t.name='Virology' join public.units u on u.id=t.unit_id where q.external_question_id='Q0197' and q.subject_id=4 and u.name='Question-bank topic index (textbook chapter structure pending verified import)' on conflict do nothing;

commit;
