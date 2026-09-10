export type QuestionCorpus = {
  title: string
  target: string
  description: string
  subjects: string[]
  limitation: string
  sourceBasis: string
  usage: string
  importanceMethod: string
  copyrightPolicy: string
}

export const bdsDypQuestionCorpus: QuestionCorpus = {
  title: 'BDS DYP Direct Question Database',
  target: 'D.Y. Patil University, Navi Mumbai BDS preparation',
  description: 'A populated, normalized question database for topic-wise academic preparation.',
  subjects: ['General Pathology', 'Microbiology', 'Pharmacology', 'Dental Materials'],
  limitation: 'This is a comparable-BDS corpus. Questions are not labeled as official DYP PYQs unless DYP provenance is verified.',
  sourceBasis: 'Excel BDS topic-wise question banks plus indexed TNMGRMU recent/archival papers.',
  usage: 'Import the Questions sheet into the application/database. Use question_id as the stable identifier.',
  importanceMethod: 'Heuristic tier based on repeated-question/topic-bank prominence and explicit long-answer importance.',
  copyrightPolicy: 'Questions are normalized or paraphrased rather than reproducing full copyrighted papers verbatim.',
}
