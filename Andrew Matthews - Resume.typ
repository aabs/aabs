#set document(title: [Andrew Matthews])
#let titleFace = "Roboto"
#let bodyFace = "Roboto"

#let regularSize = 0.9em
#let smallSize = 0.8 * regularSize
#let tinySize = 0.8 * smallSize
#let largeSize = 1.05 * regularSize

#let titleWeight = "bold"
#let bodyWeight = "regular"
#let smallWeight = "extralight"

#let brown = rgb(100, 64, 0)
#let blue = rgb(0, 0, 180)

#let bodyColour = black
#let interludeTitleColour = blue

#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
)
#set text(
  font: bodyFace,
  weight: bodyWeight,
  size: regularSize
)

#show heading.where(level: 1): it => grid(
  columns: (auto, 1fr),
  column-gutter: 0.1em,
  align: bottom,
  it,
  rect(width: 100%, height: 0.1em, fill: black)
)

#let small(content) = {
  set text(size: smallSize, weight: smallWeight)
  content
}

#let cv_section(title) = {
[
  #set text(font: titleFace, size: largeSize, weight: titleWeight)
  #v(0.5em)
  = #smallcaps[#title] 
  #v(0.5em)
]}

#let interlude_section(title, height, content) = {  
block()[
  #cv_section(title)
  #content
]}

#let interlude(title, orgname, location, dates, summary) = block(
  breakable: true,
  above: largeSize,
  below: 2.5 * largeSize,
  width: 100%
)[
  #block[
    #set text(font: titleFace, size: largeSize, weight: titleWeight, fill: interludeTitleColour)
    == #title
  ]

  #place(
    top + right,
    dx: 0pt, dy: -0 * smallSize,
    box([
     #set text(font: bodyFace, size: smallSize, weight: bodyWeight, fill: interludeTitleColour)
     #h(1fr) #orgname, _#{dates}_\ #h(1fr) _#{location}_
    ])
  )
  #par(justify: true)[
    #set text(size: regularSize, weight: bodyWeight)
    #summary
  ]
]

#import "@preview/fontawesome:0.5.0": *

#align(center)[
	#text(20pt, fill: interludeTitleColour)[Andrew #smallcaps[Matthews]]#v(-1em)
  Melbourne, Australia\    
  M: +61-400-188-995 #h(1cm) 
  W: https://aabs.wordpress.com #h(1cm) 
  S: /in/andrewmatthews/
]

#cv_section([Summary])

I am an experienced and versatile software engineer and technical leader specializing in fast, scalable and robust cloud-native distributed systems and the use of knowledge graphs and knowledge management.

#interlude_section( [Experience], 20cm, [
#interlude([Principal Engineer], [AGL], [Melbourne, AU], [2020 - Present], [

Working on #link("https://bit.ly/3Mov35v")[NEO project] one of the world's first and largest Virtual Power Plants (VPP).
  
- *Engineered high-reliability ingestion systems* for PV and battery vendors, including Tesla, SolarEdge, and Sungrow, ensuring seamless data flow for energy dispatch and grid stabilization.

- *Optimized and extended energy market polling systems*, increasing bidding reliability and enabling uninterrupted market participation, directly supporting AGL’s revenue growth and fleet expansion.

- *Developed an industrial-scale simulation platform*, including a modeling language compiler and development environment, empowering data scientists to refine arbitrage strategies and engineers to conduct large-scale system tests.

- *Designed and deployed scalable cloud-native solutions* in Azure Kubernetes Service (AKS), improving system reliability, scalability, and operational efficiency.

- *Led IoT telemetry pipeline development*, integrating new PV/Battery vendors to enhance real-time energy monitoring and predictive analytics.

- *Trusted as the go-to expert for complex software engineering challenges*, providing solutions across IoT telemetry, full-stack development (C\#, Python, Go), data engineering, DevOps, power orchestration, and distributed system simulations.



*Technologies Used*: C\# 9/10/11, Python 3, Go 1.18, .NET 5/6/7/8, Azure Kubernetes Service (AKS), Docker, Azure Functions, Service Bus, Event Hubs, Azure Data Explorer (ADX), CosmosDB, Kusto, Terraform, GraphQL, ANTLR4

])

#interlude([Senior Technology Specialist], [Telstra], [Melbourne, AU], [Jan - Sep 2020], [

Working with the Telstra TLive Team on Knowledge Graphs & Network Intelligence.

- *Developed a knowledge graph-driven network intelligence platform*, enabling engineers to efficiently navigate and analyze millions of monitored systems, reducing troubleshooting time.  
- *Designed a next-generation CMDB system* leveraging knowledge graphs, improving data integration, accuracy, and asset traceability.  
- *Optimized storage of network configurations using graph databases*, reducing query times and improving data retrieval efficiency.  
- *Created a domain-specific query language (DSL)* to bridge Prometheus/Victoria Metrics with RDF, simplifying complex data extraction for performance monitoring.  
- *Enhanced search and classification through Semantic Web inference*, streamlining infrastructure management and reducing manual effort.  
- *Built microservices for infrastructure tagging and search*, enabling faster asset discovery and operational insights.  
- *Developed an advanced query system* for petabyte-scale telemetry data, accelerating performance analysis and decision-making.  
- *Extended PromQL query parser for enriched telemetry dashboards*, improving real-time data insights for network health monitoring.  





*Technologies Used*: RDF, RDFS, OWL, SPARQL, Elixir, Kubernetes/Docker, TypeScript, Prometheus/PromQL, Allegrograph, AnzoGraph

])

#interlude([Senior Software Engineer], [SportsBet], [Melbourne, AU], [2019 - 2020], [
Working with SportsBet on Knowledge Graphs & Semantic Web Innovation  

- *Developed a proof-of-concept knowledge graph* using AWS Neptune and Blazegraph, demonstrating enhanced data flexibility and intelligent user experiences.  
- *Designed an RDF Ontology for sports data*, enabling structured representation of sports events, with a focus on basketball, to drive richer insights and recommendations.  
- *Proposed innovative applications of knowledge graphs in sports analytics*, improving data-driven decision-making and personalized betting experiences.  
- *Integrated RDF graph technology into an Event-Sourced Streaming Architecture*, enhancing real-time data processing and event correlation.  
- *Introduced advanced Graph-to-POCO bridging techniques*, simplifying knowledge graph adoption within existing .NET-based systems.  
- *Provided extensive documentation and hands-on training* to empower early adopters, accelerating internal adoption of Semantic Web technology.  
- *Developed best-practice guidelines for knowledge graph development*, ensuring maintainability and scalability in future projects.  
- *Advised on risk mitigation strategies for new technology adoption*, helping SportsBet navigate technical and operational challenges. 




*Technologies Used*: RDF, RDFS, SPARQL, AWS Neptune, Blazegraph, AWS CloudFormation, .NET Core 2.2/3, C\# 8, Docker, ASP.NET Core 2/3, Kafka, Avro, Sumo Logic

])
#interlude([Senior Technology Specialist], [Telstra], [Melbourne, AU], [2018 - 2019], [
Working with Telstra on Telemetry & Big Data Time-Series Systems  

- *Designed and implemented a high-throughput streaming time-series system*, ingesting telemetry from 2 million NBN gateway devices, enabling real-time network health monitoring.  
- *Developed real-time analytics platforms* supporting engineering and operations teams, reducing issue resolution time and improving network performance.  
- *Built scalable data streaming pipelines*, enabling regulatory reporting (e.g., ACCC compliance) and proactive customer engagement through automated insights.  
- *Created aggregate data analysis tools* for fault resolution teams and device rollouts, improving network reliability and deployment efficiency.  




*Technologies Used*: Kubernetes/Docker, Nix/NixOS, Kafka, MQTT, Elixir, C\#, Python, PostgreSQL and ElasticSearch

])

#interlude([Principal Developer], [Liberty Financial], [Melbourne, AU], [2017 - 2018], [
Working with Liberty Financial providing Technical Leadership & Cloud Transformation.

- *Served as a technical leader across three key guilds*—Strategic Engineering, Data Science, and Legacy Uplift—driving innovation and best practices.  
- *Led initiatives in data ecosystems, event sourcing, and cloud transformation*, improving scalability and enabling faster decision-making across product teams.  
- *Democratized infrastructure management by introducing Infrastructure as Code (IaC)* with Packer, Ansible, and Terraform, reducing deployment time and operational complexity.  
- *Enhanced security posture through DevSecOps adoption*, proactively mitigating traditional security risks and ensuring compliance with industry standards.  




*Technologies Used*: C\#/.NET (Framework and Core 2), Docker, Kubernetes, Ansible, Packer, Terraform, GitHub, Gitlab, TeamCity, Octopus, Lean Start-up, Pair/Mob Programming, Human-centred Design/Design Thinking

])

#interlude([Technology Architect and Strategist], [UniSuper], [Melbourne, AU], [2011 - 2017], [
Working with UniSuper providing Architecture Leadership during a Digital Transformation

- *Led an award-winning digital transformation strategy*, guiding UniSuper through industry changes due to new ATO regulations and enhancing operational agility.  
- *Re-platformed the technology department to .NET/C\#*, modernizing legacy systems and improving software development efficiency.  
- *Simplified system integration* by implementing *microservices and an ESB*, reducing integration time and increasing flexibility across systems.  
- *Elevated the reputation of architecture* within the organization, aligning teams to common goals and increasing cross-functional collaboration.  
- *Defined and governed architecture standards*, ensuring consistency and compliance with industry best practices.  
- *Promoted an inclusive approach to architecture governance*, breaking down silos and fostering collaboration across departments.  
- *Mentored architects, developers, and engineers*, cultivating a culture of continuous learning and adopting modern software practices.  
- *Provided thought leadership* for Solution, Data, Security, and Infrastructure architects, influencing strategic decisions and ensuring alignment with business goals.  
- *Trained and onboarded new recruits*, instilling architectural principles, tools, and design standards to ensure smooth integration into the team.  




*Technologies Used*: Technical Leadership, Enterprise Architecture, Governance, Strategy, Digital Transformation, Design, SOA, UML, ArchiMate, Docker, .NET/C\#, Java, BizTalk, BPMN, XML/XSD/SOAP

])
#interlude([Application Architect], [Premier Technologies], [Melbourne, AU], [2008 - 2011], [
Working with Premier to create a Hosted Dialer Product

- *Designed and led the development of a world-class dialer product*, providing *Skype-like capabilities* for contact centers and achieving *industry-leading performance* in a very competitive market.  
- *Delivered a scalable, robust, and reliable system*, enabling seamless operation for contact centers and reducing downtime.  
- *Introduced innovative techniques to boost developer productivity*, reducing development cycle times and enhancing team efficiency.  
- *Led the adoption of advanced QA techniques*, ensuring a *superior product quality* that outperformed competitors and met the highest standards.  
- *Built and managed the dialer development team*, scaling the team and fostering a culture of excellence that delivered on-time product launches.  
- *Massively reduced the Total Cost of Ownership (TCO)* for the dialer product by optimizing infrastructure, reducing operational costs.  
- *Developed a sophisticated multi-tenanted cloud deployment system*, improving scalability and enabling cost-efficient deployment for customers.  
- *Designed and led the development of the new VicRoads learner permit booking system*, improving user experience and system efficiency.  




*Technologies Used*: Team Leadership, Application Architecture, SRE, .NET, C\#, ASP.NET, Ajax, COMET, MSMQ, SQL Server, Team City

])
#interlude([Consultant], [Readify (now Telstra Purple)], [Melbourne, AU], [2006 - 2008], [
Worked as a Consultant for Readify providing .NET Architecture & System Development guidance to clients.

- *Developed a complex package holiday booking system for WebJet*, meeting high-performance expectations and *improving booking system efficiency*, resulting in enhanced customer experience and higher transaction volume.  
- *Provided architectural health assessments for Premier Technologies’ telephony products*, leading to a complete overhaul of their flagship hosted dialler product, improving system reliability and customer satisfaction.  
- *Ported TradingPost.com.au to .NET 2.0*, resolving complex architectural issues and delivering *significant performance improvements*, boosting site speed and user engagement.  
- *Consulted with Savings and Loans, NSW Police, and Toll*, delivering quick, creative solutions under tight deadlines that improved operational processes and customer-facing solutions.  
- *Developed an account provisioning system for Queensland Education Dept.*, part of the largest LDAP/AD transformation in the southern hemisphere, streamlining *user provisioning workflows* and reducing administrative overhead.  



])

#interlude([Chief Architect], [LinkMe], [Melbourne, AU], [Jan - Jun 2006], [
Worked with LinkMe on an innovative Job Board system.  

- *Hired and built the software development team*, establishing a *high-performing team culture* that contributed to the rapid growth and scalability of the platform.  
- *Defined and implemented quality standards, change, and configuration management processes*, ensuring streamlined development and minimizing post-launch issues.  
- *Developed a customer survey system*, enabling valuable *market research* that provided insights into user preferences and guided product decisions.  
- *Created a bulk email system*, enabling targeted newsletters and marketing campaigns that increased user engagement and retention.  
- *Resolved complex security issues within ASP.NET*, ensuring the platform’s *data protection* and *user trust* in a competitive market.  
- *Led system deployment and routine maintenance*, ensuring system uptime and enhancing the user experience.  
- *Designed algorithms to speed up social networking systems*, dramatically improving platform responsiveness and scalability, increasing user satisfaction.  



])

#interlude([Software Engineer], [Trading Post], [Melbourne, AU], [Jul - Dec 2005], [
  I was on the team that produced one of Australia's leading classified ad platforms.

])

#interlude([Solution Architect], [Telstra/BigPond], [Melbourne, AU], [Jan - Jun 2005], [
Worked with BigPond (Telstra) as Lead Solution Architect on the BigPond Movie Downloads project.

- *Led the solution architecture for BigPond Movie Downloads*, one of Australia's first streaming video-on-demand services, driving early adoption and positioning BigPond as an industry leader.  
- *Defined high-level solutions* for the project, ensuring alignment with business goals and enhancing platform scalability to support growing customer demand.  
- *Liaised with external vendors*, tracking progress and defining acceptable solutions, ensuring the project met quality and timeline expectations for successful delivery.  
- *Designed a single-sign-on solution*, providing a seamless user experience across BigPond sites, improving customer satisfaction and engagement.  
- *Developed a spelling suggestion system* for search queries, improving the accuracy of search results and enhancing the user experience by reducing frustration from misspellings.  
- *Provided guidance on best practices in caching architecture*, resulting in faster content delivery and improved system performance, reducing load times for users.  
- *Redefined capacity-planning procedures*, improving hardware and bandwidth provisioning and ensuring the system was ready to handle high-traffic periods without performance degradation.  



])

#interlude([Technical Architect], [Avanade], [Melbourne, AU], [2004 - 2005], [
Worked with Avanade as a Solution Architect on the rebuilding of the LloydsTSB Share Registrar, the largest share registry in the UK.

- *Designed and built the core system infrastructure*, implementing Service Oriented Architecture (SOA) and Aspect Oriented Development to deliver a scalable, maintainable system, supporting long-term growth and business continuity for LloydsTSB.  
- *Devised and implemented ORM techniques*, enabling faster data access and improving system performance, positioning LloydsTSB ahead of industry trends.  
- *Served as TDD and Agile Evangelist*, mentoring off-shored development teams on QA best practices and improving code quality, resulting in fewer defects and reduced rework.  
- *Designed the interface with EAI systems using BizTalk 2004*, enhancing system interoperability and enabling more seamless data exchange across departments.  
- *Developed code generation systems using Rational XDE*, reducing development time and costs by automating the generation of internal systems directly from designs.  



])

#interlude([Technical Architect], [Digitalbrain PLC], [Melbourne, AU], [2002 - 2003], [
Working with DigitalBrain on the Newcastle Digital City Initiative as Lead Architect & Developer.

- *Led the development of one of the UK’s first Digital City initiatives*, creating a foundational digital infrastructure that connected B2B and B2C systems, driving industry collaboration and enabling new service offerings.  
- *Developed multi-platform distributed ORM systems*, enabling seamless integration of departmental databases and vendor data, streamlining operations and reducing manual data entry efforts.  
- *Created code generation systems*, automating the development of vertical systems, saving time and reducing costs by enabling faster iteration and deployment.  
- *Integrated GIS systems into innovative geographical search systems*, positioning the initiative at the forefront of location-based services and improving the user experience with dynamic, relevant search results.  
- *Designed and developed the Virtual Labour Market and Virtual Store-front Systems*, enhancing market accessibility for businesses and job seekers, driving greater user engagement in the digital ecosystem.  
- *Created an object-oriented model* to integrate job boards, training, and career development, streamlining career progression for users and improving workforce development opportunities.  
- *Integrated systems with BEA Aqualogic Portal System (Plumtree)*, improving cross-platform accessibility and ensuring users could easily navigate and interact with a wide array of services.  
- *Led a cross-functional team* to manage and deliver the project, ensuring alignment with business objectives and timelines.  
- *Conducted requirements analysis, feasibility studies, and technical design*, delivering a well-defined solution that met stakeholder needs and aligned with digital transformation goals.  
- *Presented to and liaised with key stakeholders*, ensuring their requirements were incorporated into the solution and that the initiative stayed on track with management expectations.  



])

#interlude([Web Development Manager], [Card Protection Plan], [Melbourne, AU], [2001 - 2002], [
  Designed and lead development of the company's public website (using
  Java).


- I mentored the team, teaching them to program in Java, and trained them to support the application in production.


- I was responsible for costing the project and selling the proposal to executive stakeholders. I was had a hand in choosing their CMS capabilities.


])
#interlude([Research Officer], [Parallel Applications Centre], [Melbourne, AU], [1998 - 1999], [
Worked as R&D Researcher with the Parallel Application Centre, Southampton University (UK) on various projects.

- *Led the development of an evolutionary computation system* for the IDAC project, optimizing data compression of acoustic signals from turbine accelerometers, enhancing signal processing efficiency and improving data storage and analysis in turbine monitoring systems.  
- *Developed methodologies for simulating real-time systems* as part of the RAPIER project, utilizing Rate Monotonic Scheduling theory within the Schlaer-Mellor methodology, helping automotive and aerospace industries improve the design and performance of real-time systems.  
- *Contributed to the production of software design and development tools*, formulating best practices in UML design and introducing knowledge management policies, accelerating software development cycles and increasing industry-wide adoption of structured design methodologies.  
- *Promoted the introduction of UML design best practices*, streamlining system design processes and fostering greater consistency in automotive and aerospace software projects.  



*Technologies Used*: C++, STL, Genetic Algorithms


])
#interlude([Senior Software Engineer], [Fairfield Telepathology Ltd], [Melbourne, AU], [1996 - 1998], [
Working with Fairfield Telepathology on the PathSight telepathology product, enabling reduced time to diagnosis for patients in remote locations.

- *Led the development of the PathSight Telemedicine system*, providing innovative telepathology capabilities including imaging, remote control, video conferencing, and satellite communications, enabling healthcare professionals to remotely diagnose and treat patients.  
- *Productized the initial proof of concept*, driving the transition from an experimental solution to a market-ready product that became the most successful telepathology system in Europe, adopted by leading hospitals and healthcare providers.  
- *Introduced object-oriented practices*, significantly enhancing the flexibility and maintainability of the product, reducing future development costs and allowing for easier feature scaling.  
- *Introduced UML and Design Patterns*, improving the communication of designs and objectives across teams, resulting in faster iteration cycles and a reduced time to market.  
- *Integrated advanced graphics frameworks*, boosting system performance and reliability, enhancing the user experience for doctors and radiologists performing remote diagnostics.  
- *Enhanced video communication, remote control, and focus control features*, improving the accuracy of remote diagnoses and enabling better patient care through seamless telemedicine capabilities.  
- *Contributed to the product's success*, making PathSight the leading telepathology solution in Europe, with significant market share in the telemedicine sector and wide adoption across European healthcare providers.  


])
])

//#pagebreak()

#interlude_section( [Education], 10cm,[
#interlude([B.Sc. (hons) Computer Science], [University of Brighton], [Brighton, UK], [1992 - 1996], [
  Computer Science degree specializing in Software Engineering,
  Evolutionary Computing and Language Processing.


-   *Thesis*: _Linguistic Development Literature Review_


-   *Thesis*: _Evolutionary Grammar Induction_ -- Unpublished original research applying Genetic Programming to Natural Language Processing and Grammar Induction.


])
#interlude([Knowledge Graphs - Foundations and Applications], [FIZ Karlsruhe Institute of Technology], [Karlsruhe, DE], [2023 - 2024], [
  MOOC on symbolic AI, including Ontology Engineering, Knowledge
  Management and its use in grounding deep learning systems like LLMs.
])
#interlude([DevSecOps], [Sense of Security], [Melbourne, AU], [Jan - Dec 2018], [
  Workshop introducing the embedding of security and compliance into
  all aspects of the DevOps development, deployment and provisioning
  pipeline. Introduction to tools and techniques needed to defend
  cloud based infrastructure from common exploits.
])
#interlude([Human-Centered Design], [LUMA Institute], [Melbourne, AU], [Jan - Dec 2018], [
  A course covering the use of human-centered design, otherwise known
  as ``design thinking'', for structured innovation and product design.
])
#interlude([Smart Cities], [ETH Zurich], [Zurich], [Jun - Aug 2017], [
  MOOC on how data and information will impact the design,
  sustainability and resilience of future cities.
])
#interlude([Artificial Intelligence], [University of Columbia], [New York, USA], [Jan - Jun 2017], [
  MOOC covering recent advances in AI with practical and theoretical
  work on designing intelligent agents to solve real-world problems.
  Topics included deep learning, search, games, machine learning,
  classification, logic, natural language processing and constraint
  satisfaction problems.
])
#interlude([HND Software Engineering], [University of Brighton], [Brighton, UK], [1990 - 1992], [
  Foundational study of Software Engineering and practical software
  development and design.
])
])

#v(largeSize)

#cv_section([Skills])


*Core Skills*: #text(size: 0.8em)[C\#, .NET, Azure, Docker, Kubernetes, IoT]


*Everyday Skills*: #text(size: 0.8em)[Cloud Development, Terraform, Queuing (Kafka, NATS, Event Hubs, MQTT, etc), Databases (Azure Data Explorer(ADX), SQL Server, CosmosDB, PostgreSQL, MySQL, Redis), CI/CD, DevOps, TDD, DI/IoC, Agile]


*Miscellaneous*: #text(size: 0.8em)[Amazon Web Services (AWS), Event Sourcing/CQRS, Strategy, Enterprise Architecture, ArchiMate 3, AI, Knowledge Graphs, Aspect Oriented Programming (AOP), Microservices, Pair/Mob Programming, RDF(S)/OWL/SPARQL, Compiler Development]


*Old Stuff (sometimes handy)*: #text(size: 0.8em)[C, Prolog, Erlang, Elixir, Ada, Eiffel, Fish Shell, Expect, Awk, Sed, Forth, Logo, Scheme, Eiffel, Python, Go, Prolog, C++, Java, JavaScript, AOP, UML, SOA, Petri Nets, Automata]

