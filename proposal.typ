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

PROMPT is a microservice-based course management platform for project-based learning (PBL) @thomas_review_2000 at TUM; a previous thesis @hagl_prompt_2025 introduced course templating as the first step toward scalable teaching management. Two gaps remain: PROMPT lacks a systematic usability evaluation, leaving improvement decisions without empirical grounding; and the platform has no research group concept, making self-administration impossible as it scales to more departments. This IDP closes both gaps: a user study combining the System Usability Scale (SUS) @brooke_sus_nodate @bangor_empirical_2008 with the Technology Acceptance Model (TAM) @davis_perceived_1989 produces an empirical usability baseline, while a parallel research group abstraction introduces Research Group as a first-class entity with its own courses, membership, and role-based access control across PROMPT's Go/PostgreSQL server and React client. Study findings directly inform implementation priorities.

= Relation to the Application Field

The application field of this IDP is Economics; the project is interdisciplinary at the intersection of Informatics and Economics. The user study applies TAM @davis_perceived_1989 — the dominant theory in management and economics research for explaining technology adoption — and SUS @bangor_empirical_2008, situating the evaluation in the empirical tradition of business and management research. The research group abstraction addresses an organizational design problem studied in economics: structuring ownership, delegation, and access control for shared digital resources across organizational units, mirroring information governance and principal-agent relationships in institutional economics. The interdisciplinary contribution lies in the feedback loop between both perspectives: economics-derived evaluation findings directly guide engineering decisions, and the implemented artifact supports the organizational governance structures analyzed from an economics standpoint.

= Accompanying Lecture

*Information Management for Digital Business Models* --- IN8024

= Rationale for the Choice of Lecture

IN8024's focus on information governance and digital organizational models applies directly to both work streams: the research group abstraction introduces an information governance layer into PROMPT, while the SUS/TAM study evaluates whether the system supports user needs — a core concern of information management.

= Milestones

This IDP pursues two goals: (1) establish an empirical usability baseline for PROMPT via a combined SUS/TAM user study; and (2) extend PROMPT with a Research Group abstraction enabling self-administered, multi-group operation at scale. Study findings feed directly into implementation.

+ *Study Design* _(Apr 2026)_ --- Define research questions; design SUS @brooke_sus_nodate and TAM @davis_perceived_1989 instruments; merge into a unified study protocol with participant criteria.
+ *Merging the Studies* _(May 2026)_ --- Finalize and pilot the instrument; prepare recruitment and ethics materials.
+ *Conducting the Studies* _(Jun -- Jul 2026)_ --- Recruit participants; run the study; analyze results (SUS scoring @bangor_empirical_2008, TAM path analysis); document findings.
+ *Implementation* _(Aug -- Sep 2026)_ --- Implement the research group abstraction in PROMPT (data model, Research Group service, RBAC, client-side UI); validate design against study findings.
