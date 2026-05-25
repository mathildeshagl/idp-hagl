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

#set heading(numbering: "1.")

= Project Description

PROMPT is a microservice-based course management platform for project-based learning (PBL) @thomas_review_2000 at TUM, enabling instructors to compose courses from reusable phase modules and manage student participation @heun_prompt_2025. A previous thesis @hagl_prompt_2025 introduced course templating as the first step toward scalable teaching management. Two gaps remain: PROMPT lacks a systematic usability evaluation, leaving improvement decisions without empirical grounding; and all courses share a flat global namespace with no concept of a research group as an owner, making self-administration impossible as the platform scales to more departments.

This IDP addresses both gaps. A user study combines the System Usability Scale (SUS) @brooke_sus_nodate @bangor_empirical_2008 with the Technology Acceptance Model (TAM) @davis_perceived_1989 into a unified protocol and runs it with current PROMPT users to produce an empirical usability baseline. In parallel, this IDP designs and implements a research group abstraction, introducing Research Group as a first-class entity with its own courses, membership, and role-based access control across PROMPT's Go/PostgreSQL server-side and React client-side. Study findings directly inform implementation priorities.

= Relation to the Application Field

The application field of this IDP is Economics. Both work streams are grounded at the intersection of Informatics and Economics, which constitutes the interdisciplinary character of this project.

From an economics perspective, the user study draws on the Technology Acceptance Model (TAM) @davis_perceived_1989, the dominant theory in management and economics research for explaining and predicting technology adoption, and the System Usability Scale (SUS) @bangor_empirical_2008, situating the evaluation firmly within the empirical tradition of business and management information systems research. The research group abstraction addresses a canonical organizational design problem studied in economics: how to structure ownership, delegation, and access control for shared digital resources across organizational units, mirroring questions of information governance and principal-agent relationships in institutional economics.

From the Informatics side, the project realizes these organizational models as software artifacts. The interdisciplinary contribution lies in the feedback loop between both perspectives: empirical findings produced by economics-derived evaluation methods directly guide engineering decisions, and the implemented artifact in turn supports the organizational governance structures analyzed from an economics standpoint.

= Accompanying Lecture

*Information Management for Digital Business Models* --- IN8024

= Rationale for the Choice of Lecture

IN8024's focus on information governance and digital organizational models applies directly to both work streams: the research group abstraction introduces an information governance layer into PROMPT, while the SUS/TAM study evaluates whether the system supports user needs - a core concern of information management. Together they produce an information-system artifact grounded in the lecture's principles of structuring and governing information in digital services.

= Milestones

This IDP pursues two goals: (1) produce an empirical usability baseline for PROMPT by combining SUS and TAM into a unified study protocol executed with real users; and (2) extend PROMPT with a research group abstraction, introducing Research Group as a first-class organizational entity with its own courses, membership, and role-based access control, enabling self-administered multi-group operation at scale. Study findings feed directly into implementation decisions, linking both goals.

+ *Study Design* _(Apr 2026)_ --- Define research questions; design SUS @brooke_sus_nodate and TAM @davis_perceived_1989 instruments; merge into a unified study protocol with participant criteria.
+ *Merging the Studies* _(May 2026)_ --- Finalize and pilot the instrument; prepare recruitment and ethics materials.
+ *Conducting the Studies* _(Jun -- Jul 2026)_ --- Recruit participants; run the study; analyze results (SUS scoring @bangor_empirical_2008, TAM path analysis); document findings.
+ *Implementation* _(Aug -- Sep 2026)_ --- Implement the research group abstraction in PROMPT (data model, Research Group service, RBAC, client-side UI); validate design against study findings.
