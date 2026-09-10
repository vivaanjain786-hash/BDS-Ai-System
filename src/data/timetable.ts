import type { Exam, TimetableEntry } from '../types'

// Transcribed from the timetable and examination notice provided by the student.
export const providedTimetable: TimetableEntry[] = [
  { id: 'provided-mon-0800', day: 'Monday', date: null, startsAt: '8:00 am', endsAt: '9:45 am', title: "Conservative Dentistry Practical - A Batch / Prosthetic Dentistry Practical - B Batch", location: 'Lecture Hall No. 2', entryType: 'Practical' },
  { id: 'provided-mon-1000', day: 'Monday', date: null, startsAt: '10:00 am', endsAt: '10:50 am', title: 'General Pathology', location: null, entryType: 'Lecture' },
  { id: 'provided-mon-1100', day: 'Monday', date: null, startsAt: '11:00 am', endsAt: '1:00 pm', title: 'General Pathology Practical', location: null, entryType: 'Practical' },
  { id: 'provided-mon-1330', day: 'Monday', date: null, startsAt: '1:30 pm', endsAt: '3:30 pm', title: 'Dental Materials / Prosthodontics', location: null, entryType: 'Lecture' },
  { id: 'provided-tue-0800', day: 'Tuesday', date: null, startsAt: '8:00 am', endsAt: '9:45 am', title: "Conservative Dentistry Practical - B Batch / Prosthetic Dentistry Practical - A Batch", location: 'Lecture Hall No. 2', entryType: 'Practical' },
  { id: 'provided-tue-1000', day: 'Tuesday', date: null, startsAt: '10:00 am', endsAt: '10:50 am', title: 'Microbiology', location: null, entryType: 'Lecture' },
  { id: 'provided-tue-1100', day: 'Tuesday', date: null, startsAt: '11:00 am', endsAt: '1:00 pm', title: 'Microbiology', location: null, entryType: 'Lecture' },
  { id: 'provided-tue-1330', day: 'Tuesday', date: null, startsAt: '1:30 pm', endsAt: '3:30 pm', title: 'Conservative Dentistry', location: null, entryType: 'Lecture' },
  { id: 'provided-wed-0800', day: 'Wednesday', date: null, startsAt: '8:00 am', endsAt: '9:45 am', title: "Conservative Dentistry Practical - A Batch / Prosthetic Dentistry Practical - B Batch", location: 'Lecture Hall No. 2', entryType: 'Practical' },
  { id: 'provided-wed-1000', day: 'Wednesday', date: null, startsAt: '10:00 am', endsAt: '10:50 am', title: 'Pharmacology', location: null, entryType: 'Lecture' },
  { id: 'provided-wed-1100', day: 'Wednesday', date: null, startsAt: '11:00 am', endsAt: '1:00 pm', title: 'Dental Material Practical: Prostho - A Batch / Pharmacology - B Batch', location: null, entryType: 'Practical' },
  { id: 'provided-wed-1330', day: 'Wednesday', date: null, startsAt: '1:30 pm', endsAt: '3:30 pm', title: 'Oral Pathology Practical - B Batch / Dental Material Practical / Conservative Dentistry - A Batch', location: null, entryType: 'Practical' },
  { id: 'provided-thu-0800', day: 'Thursday', date: null, startsAt: '8:00 am', endsAt: '9:45 am', title: "Conservative Dentistry Practical - B Batch / Prosthetic Dentistry Practical - A Batch", location: 'Lecture Hall No. 2', entryType: 'Practical' },
  { id: 'provided-thu-1000', day: 'Thursday', date: null, startsAt: '10:00 am', endsAt: '10:50 am', title: 'Pharmacology', location: null, entryType: 'Lecture' },
  { id: 'provided-thu-1100', day: 'Thursday', date: null, startsAt: '11:00 am', endsAt: '1:00 pm', title: 'Prosthodontics', location: null, entryType: 'Lecture' },
  { id: 'provided-thu-1330', day: 'Thursday', date: null, startsAt: '1:30 pm', endsAt: '3:30 pm', title: 'Dental Material Conservative', location: null, entryType: 'Lecture' },
  { id: 'provided-fri-0800', day: 'Friday', date: null, startsAt: '8:00 am', endsAt: '9:45 am', title: 'Oral Pathological Practical - A Batch / Dental Material Practical - B Batch / Conservative Dentistry - B Batch', location: 'Lecture Hall No. 2', entryType: 'Practical' },
  { id: 'provided-fri-1000', day: 'Friday', date: null, startsAt: '10:00 am', endsAt: '10:50 am', title: 'Dental Materials', location: null, entryType: 'Lecture' },
  { id: 'provided-fri-1100', day: 'Friday', date: null, startsAt: '11:00 am', endsAt: '1:00 pm', title: 'Dental Material Practical: Prosthetic Dentistry - B Batch / Pharmacology - A Batch', location: null, entryType: 'Practical' },
  { id: 'provided-fri-1330', day: 'Friday', date: null, startsAt: '1:30 pm', endsAt: '3:30 pm', title: 'Oral Pathology', location: null, entryType: 'Lecture' },
]

export const providedExams: Exam[] = [
  { id: 'provided-theory-constitution', title: 'Constitution of India', examDate: '07 Dec 2026 · 10:00 am - 1:00 pm', subjectId: null },
  { id: 'provided-theory-general-pathology', title: 'General Pathology', examDate: '08 Dec 2026 · 10:00 am - 1:00 pm', subjectId: null },
  { id: 'provided-theory-microbiology', title: 'Microbiology', examDate: '09 Dec 2026 · 10:00 am - 1:00 pm', subjectId: null },
  { id: 'provided-theory-pharmacology', title: 'Pharmacology', examDate: '10 Dec 2026 · 10:00 am - 1:00 pm', subjectId: null },
  { id: 'provided-theory-dental-materials', title: 'Dental Materials', examDate: '11 Dec 2026 · 10:00 am - 1:00 pm', subjectId: null },
  { id: 'provided-medical-practical-1', title: 'Medical practicals · A / B / C batches', examDate: '14 Dec 2026 · 9:30 am onwards', subjectId: null },
  { id: 'provided-medical-practical-2', title: 'Medical practicals · B / C / A batches', examDate: '15 Dec 2026 · 9:30 am onwards', subjectId: null },
  { id: 'provided-medical-practical-3', title: 'Medical practicals · C / A / B batches', examDate: '16 Dec 2026 · 9:30 am onwards', subjectId: null },
  { id: 'provided-dental-practical-1', title: 'Dental practicals · A / B / C batches', examDate: '17 Dec 2026 · 10:30 am onwards', subjectId: null },
  { id: 'provided-dental-practical-2', title: 'Dental practicals · B / C / A batches', examDate: '18 Dec 2026 · 10:30 am onwards', subjectId: null },
  { id: 'provided-dental-practical-3', title: 'Dental practicals · C / A / B batches', examDate: '19 Dec 2026 · 10:30 am onwards', subjectId: null },
]
