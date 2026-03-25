#import "/layout/proposal_template.typ": *
#import "/metadata.typ": *

#set document(title: titleEnglish, author: author)

#show: proposal.with(
  title: titleEnglish,
  titleGerman: titleGerman,
  degree: degree,
  program: program,
  examiner: examiner,
  supervisors: supervisors,
  author: author,
  startDate: startDate,
  submissionDate: submissionDate,
)

#set heading(numbering: none)

= Project Description

PROMPT is a microservice-based course management platform for project-based learning (PBL) @thomas2000 at TUM, enabling instructors to compose courses from reusable phase modules and manage student participation @krusche2019. A previous thesis @hagl2025 introduced course templating as the first step toward scalable teaching management. Two gaps remain: PROMPT has never been systematically evaluated for usability, leaving improvement decisions unvalidated; and all courses share a flat global namespace with no concept of a university chair as an owner, making self-administration impossible as the platform scales to more departments.

This IDP addresses both gaps. A user study combines the System Usability Scale (SUS) @brooke1996 @bangor2008 with the Technology Acceptance Model (TAM) @davis1989 into a unified protocol, executed with current PROMPT users to produce an empirical usability baseline. In parallel, a chair abstraction is designed and implemented — introducing Chair as a first-class entity with its own courses, membership, and role-based access control across PROMPT's Go/PostgreSQL backend and React frontend. Study findings directly inform implementation priorities.

= Relation to the Application Field

PROMPT is an information system (IS) artifact in an organizational context; modeling chair ownership and role-based access control hierarchies is a canonical IS design problem. TAM @davis1989 is the dominant IS framework for predicting technology adoption, and SUS @bangor2008 is the most widely-used standardized usability instrument — applying both grounds this project firmly in IS evaluation methodology. The chair abstraction further contributes to the digital transformation of academic organizations by enabling scalable, self-governed teaching management across multiple organizational units.

= Accompanying Lecture

*Information Management for Digital Business Models* --- IN8024

= Rationale for the Choice of Lecture

IN8024's focus on information governance and digital organizational models applies directly to both work streams: the chair abstraction introduces an information governance layer into PROMPT, while the SUS/TAM study evaluates whether the system supports user needs — a core concern of information management. Together they produce an IS artifact grounded in the lecture's principles of structuring and governing information in digital services.

= Milestones

+ *Study Design* _(Oct -- Nov 2025)_ --- Define research questions; design SUS @brooke1996 and TAM @davis1989 instruments; merge into a unified study protocol with participant criteria.
+ *Merging the Studies* _(Dec 2025 -- Jan 2026)_ --- Finalize and pilot the instrument; prepare recruitment and ethics materials.
+ *Conducting the Studies* _(Feb -- Mar 2026)_ --- Recruit participants; run the study; analyze results (SUS scoring @bangor2008, TAM path analysis); document findings.
+ *Implementation* _(Apr -- Sep 2026)_ --- Implement the chair abstraction in PROMPT (data model, backend Chair service, RBAC, frontend UI); validate design against study findings.
