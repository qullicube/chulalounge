# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	
	courses = Course.create([#ICE - Course
								{ 	title: "Introduction to ICE",
									number: '2143101',
									description: "Fundamental engineering concepts and practices. Technology concepts and trends underlying current and future 
											uses of information and communication technology. Introduction to engineering management including 
											important aspects of management science.",
									curriculum_id: 1,
									academic_year: 2012
								},

								{ 	title: "English for Engineering I",
									number: '5500111',
									description: "Grammar; use of simple sentences; writing mechanics and process; writing and vision aids to good English.",
									curriculum_id: 5,
									academic_year: 2012
								},

								{ 	title: "Communicative English I",
									number: '5501112',
									description: "",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "English for Engineering II",
									number: '5500222',
									description: "Use of more complex sentences; expressive and creative writing; writing research papers and technical reports. ",
									curriculum_id: 5,
									academic_year: 2012
								},

								{ 	title: "Calculus I",
									number: '2301107',
									description: "Limit, continuity, differentiation and integration of real valued functions of a real variable and their 
											applications; techniques of integration; improper integrals.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Calculus II",
									number: '2301108',
									description: "Mathematical induction; sequences and series of real numbers; Taylor series expansion and approximation of 
											elementary functions; numerical integration; vectors, lines and planes in three dimensional space; calculus of 
											vector valued functions of one variable; calculus of real valued functions of two variables; introduction to 
											differential equations and their applications.",
									curriculum_id: 5,
									academic_year: 2012
								},

								{ 	title: "Physics for Engineers",
									number: '2304153',
									description: "Mechanics of particles and rigid bodies, properties of matter, fluid mechanics, heat, vibrations and waves, 
											elements of electromagnetism, optics, modern physics.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Physics Laboratory for Engineers",
									number: '2304193',
									description: "Measurement and precision; experiments on simple harmonic motion, radius of gyration, dynamics of rotation, 
											velocity of sound, viscosity of fluids.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Computer Programming",
									number: '2190101',
									description: "Computer concepts; computer components; hardware and software interaction; EDP concepts; program design 
											and development methodology; high-level language programming. ",
									curriculum_id: 1,
									academic_year: 2013
								},

								{ 	title: "Computer Programming Lab",
									number: '2190151',
									description: "Programming in high-level language, programming tools, programming styles and convention, debugging.",
									curriculum_id: 1,
									academic_year: 2013
								},

								{ 	title: "Probability and Statistics for Information and Communication Engineering",
									number: '2143122',
									description: "Discrete probability; probability space, counting techniques, conditional probability and independent events, 
											random variables, binomial and multinomial distributions, Poisson distribution, Bayes theorem, expected value, 
											conditional expectation, variance; continuous probability.",
									curriculum_id: 1,
									academic_year: 2012
								},

								{ 	title: "Discrete Mathematics",
									number: '2143110',
									description: "Sets, relations, functions, theorem and proof; combinatorics; counting, principle of inclusion exclusion, 
											recurrent relations, generating functions; graphs and trees; introduction to number theory. ",
									curriculum_id: 5,
									academic_year: 2012
								},

								{ 	title: "Chemistry for Engineers",
									number: '2302105',
									description: "",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "General Chemistry Laboratory",
									number: '2302103',
									description: "",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year 2/1
								{ 	title: "Electrical Circuits",
									number: '2140201',
									description: "DC circuit analysis; Kirchhoff's laws; Thevenin's and Norton's theorem, semiconductor devices; op amps; 
											digital circuit; DC motor.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Electrical Circuits Lab",
									number: '2140202',
									description: "Practices on simple circuits.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Advanced Mathematics Methods",
									number: '2143201',
									description: "First order differential equations; ordinary differential equations of higher order; series solution of ordinary 
											linear differential equations; Fourier series; Fourier transfroms; Laplace transforms; orthogonal functions and 
											application to boundary value problems; introduction to complex analysis; advanced matrix algebra; vector 
											calculus.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Fundamental Data Structure and Algorithm",
									number: '2143203',
									description: "Basic data types, trees, basic operations on sets, sorting and searching, algorithm design techniques, memory management.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Engineering Economic and Data Analysis",
									number: '2143310',
									description: "Interest formulations; time value of money; equivalent value and rate of return; project analysis and evaluation; 
											cost analysis; break even point, Analysis of decisions in engineering under uncertainty; decision tree, expected 
											monetary value and expected utility; expected value of perfect information and sampling information; basis for 
											expected utility theory; rating and ranking of alternatives using multiple criteria; case studies.",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year 2/2
								{ 	title: "Technical Communication for International Engineers",
									number: '2143222',
									description: "How to write a descriptions or documents related to engineering",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Signal and Linear Systems",
									number: '2143221',
									description: "Fundamental engineering concepts and practices. Technology concepts and trends underlying current and future 
											uses of information and communication technology. Introduction to engineering management including 
											important aspects of management science.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Application Programming",
									number: '2143231',
									description: "Application programming methodology; object-oriented programming, event-driven programming; 
											Multithreading; error and exception handling; application programming interface (API), graphical user interface 
											(GUI).",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Computer Architecture and Organization",
									number: '2143241',
									description: "Performance metrics; central processing unit; hardwired and microprogram of control units; instruction level 
											parallelism: pipeline, superscalar; memory system: cache memory, virtual memory, disk array; development and 
											future of architecture.",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year 3/1
								{ 	title: "Principles of Software Engineering",
									number: '2143303',
									description: "Design tools and techniques, top down design, modular design, software tools, debugging, test data; software 
											reliability, theory and concepts, errors and faults and estimating, reliability models, availability models; 
											management techniques, cost estimation, software maintenance. ",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Database Management Systems",
									number: '2143310',
									description: "Database concepts: goals, data independence, relationships, logical and physical organizations, schema and 
											subschema; data models: hierarchical network and relational models; data normalization: first, second, and third 
											normal forms of data relations; canonical schema, data independence; data description language; query 
											facilities: relational algebra, relational calculus, data structures for establishing relations, query functions, design 
											and translation strategies; file organization and file security: data integrity and reliability. ",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Operations Management",
									number: '2143304',
									description: "Operations strategies; inventory and distribution management; capacity management; aggregate planning; 
											master production scheduling; material requirements planning; operation scheduling; project management.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Introduction to Communication",
									number: '2143301',
									description: "Signal and noise analysis; analog and digital modulation and detection systems; Nyquist sampling theorem,
											quantization; digital baseband systems; digital modulation such as ASK, PSK, FSK, MSK and QAM; information 
											transmission, synchronization and channel coding; applications of communication systems.",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year 3/2
								{ 	title: "Telecommunication Systems",
									number: '2143321',
									description: "Introduction to telecommunication services and systems; signal transmission in telecommunication networks, 
											twisted pair, coaxcial cable, terrestrial microwave system, satellite microwave system, optical fiber system; 
											switching architecture, circuit and packet; basic queuing theory and traffic analysis; network design and 
											optimization; OSI model; Broadband networks, IP networks, WDM networks, SONET/SDH, Gigabit networks.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Engineering Management for International Engineers",
									number: '2143310',
									description: "Risk Mangement, Finance, Quality Management,",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Enterprise Information Systems",
									number: '2143323',
									description: "Enterprise information systems; information technology infrastructure; impact of information systems on 
											organizations; information technology and business strategy; e-business and e-commerce; ethical and social 
											issues related to technology; technology decisions; business value of information systems.",
									curriculum_id: 5,
									academic_year: 2013		
								},

								{ 	title: "Software Project Management",
									number: '2143324',
									description: "Essence of software project management; scope of software project; project management approaches; project 
											estimation; software quality assurance; case study on project life cycle.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Principles of Data Communication",
									number: '2143322',
									description: "Introduction to data communications and networks, Layered protocols and network architectures, Basic of data 
											transmission (characteristics of transmission media, modulation, multiplexing), Data link protocols (error 
											detection, error correction, data link control protocols), Point-to-point protocols at network layer (routing, flow 
											control, error recovery), Delay models (basic queuing theory), Multi-access communications (Aloha, CSMA, 
											multi-access reservations), System design considerations.",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year 4/1
								{ 	title: "Multimedia Engineering",
									number: '2143404',
									description: "Introduction to Multimedia Engineering. Text Coding Standards Image Coding Standards. Video Coding 
											Standards. Audio Coding Standards. Speech Coding Standards. IP networks. Wireless networks. Multimedia 
											Communication Protocols. Multimedia Communication Applications.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Telecommunication Management",
									number: '2143407',
									description: "Telecommunication Technology and Trends. Telecommunication Markets. Telecommunication Economics. 
											Telecommunication Law and Policy. Telecommunication Licensing. Competition in Telecommunication 
											Business. Telecommunication Project Management.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "User Interface Design",
									number: '2143416',
									description: "Design, implementation, and evaluation of human computer interfaces",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Ubiquitous Computing",
									number: '2143418',
									description: "Introduction to ubiquitous computing, overview and basic terminologies, visions and fundamental challenges, 
											wireless transport, mobile IP, wireless ad hoc networks, wireless sensor networks, medium access control for 
											wireless sensor networks, middleware, programming wireless networks of embedded systems.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Introduction to Stochastic Modeling",
									number: '2143420',
									description: "Stochastic processes and models in operations research; discrete and continuous time parameter; Markov chains; 
											queuing theory; inventory theory; simulation",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Optimization: Theory and Applications",
									number: '2143421',
									description: "Introduction to the theory, algorithms, and applications of optimization; optimization methodologies: linear 
											programming, network optimization, integer programming, decision trees, and dynamic programming; 
											applications to logistics, manufacturing, transportation, marketing, project management and finance.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Modern Web Development in Practice",
									number: '2143496',
									description: "Developing Web using Ruby on rails",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "High Technology Entrepreneurship",
									number: '2143423',
									description: "Becoming a new startup",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Object-oriented Techniques",
									number: '2143412',
									description: "Techniques of Object-Oriented Analysis (OOA) and Design (OOD) covering managing complexity, using data 
											and procedural abstraction, encapsulation, hierarchies, and decomposition of problems into classes and objects. 
											The concepts introduced include overloading, multiple inheritance and polymorphism; the analysis, design and 
											implementation phases of software development, use case driven object-oriented development methodology, 
											and design patterns and Unified Modelling Language (UML).",
									curriculum_id: 5,
									academic_year: 2012
								},

								{ 	title: "Teletraffic Engineering and Network Optimization ",
									number: '2143408',
									description: "Teletraffic engineering overview; quality of service and network performance optimization; classification of 
											teletraffic engineering systems and traffic parameters; traffic data collection techniques and statistics; modeling 
											of non-queuing/loss-type system and queuing/delay-type system; modeling of system with mobile users; 
											fundamentals of network simulation; real-time network management and long-term network planning; 
											application of optimization techniques in network controls; case studies in network design.",
									curriculum_id: 5,
									academic_year: 2013
								},
								#Year4/2
								{ 	title: " Netcentric Architecture ",
									number: '2143401',
									description: "Principles of network applications, protocols, services (HTTP, FTP, SMTP, DNS, Peer-to-peer file sharing), 
											Web caching, Content distribution networks, Socket programming, Client-server model, Transport layer (TCP, 
											UDP), Reliable data transfer, Congestion control, Virtual circuit and datagram networks, The Internet Protocol 
											(IP), Routing in the Internet, Broadcast and multicast routing, Multimedia networking, Security in computer 
											networks, Network management.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "System Integration",
									number: '2143406',
									description: "System Integration Definition; Communication Systems; Intelligent building Automation; Networking 
											Technology and Cabling System Management; Introduction to Communication System Design; Related 
											standards for Communication Systems Integration; Compatibility and Interoperability Analysis; Hardware vs. 
											Software Integration; Network Integration; Enterprise Application Integration; Management of Risk from 
											Integration; Interpersonal skills and Communications for System Engineer; Case Studies in System Integration.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Signal Transmission System ",
									number: '2143410',
									description: "Transmission lines, transmission line equations, transmission line analysis for sinusoidal waveforms, 
											transmission line analysis for pulse waveforms, basic of plane wave propagation in free space, basic of signal 
											transmission in optical fiber, signal dispersion in optical fiber, fundamental of antenna, basic antenna 
											parameters, design of transmission link, link budget.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "System Security",
									number: '2143417',
									description: "Techniques for achieving security in multi-user computer systems and distributed computer systems. Topics: 
											physical security; discretionary and mandatory access control; biometrics; information-flow models of security; 
											covert channels; elementary cryptography; public-key cryptography; logic of authentication; electronic cash; 
											viruses; firewalls; electronic voting; risk assessment; secure web browsers.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Game Design and Development Process",
									number: '2143425',
									description: "",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Computer Graphics",
									number: '2143424',
									description: "",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Supply Chain Management",
									number: '2104441',
									description: "Definition of a supply chain; coordination difficulties; pitfalls and opportunities in supply chain management; 
											inventory/service tradeoffs; performance measurement and incentives; global supply chain management; mass 
											customization; supplier management; design and redesign of products and processes for supply chain 
											management; tools for analysis; industrial applications; current industry initiatives.",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: "Principle of Wireless Communication",
									number: '2143409',
									description: "Introduction to design analysis and fundamental limits of wireless transmission systems. Wireless channel and 
											system models, multipath fading; equalization, channel coding and diversity; resource management and power 
											control; multiple antenna and MIMO systems; space-time codes and decoding algorithms; multiple-access 
											techniques and multiuser detection; cellular and ad-hoc network topologies; OFDM and ultrawideband systems; 
											Wireless LANs and MANs, cellular system standards. ",
									curriculum_id: 5,
									academic_year: 2013
								},

								{ 	title: " Data Warehousing ",
									number: '2143411',
									description: "Data warehouse design, Data Modeling, database design and database access",
									curriculum_id: 5,
									academic_year: 2013
								},

							#Nano Course

							])