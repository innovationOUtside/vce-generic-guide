# Scenario for TMA 02

In TMA02, you will investigate data relating to the Food Hygiene Rating Scheme (FHRS) in England, Wales and Northen Ireland (Scotland uses a slightly different scheme). The data is obtained from the UK's Food Standards Agency (FSA) and forms the data basis for the food hygiene ratings stickers that are displayed by food outlets in the UK.

Example data is provided in the directory:

     2024J_TMA02_data/FSA/

You can get a feel for the data created by the scheme, and how it is used, by investigating the Food Hygiene Rating Scheme's *Brand Standard*, available at https://www.food.gov.uk/local-authorities/guidance-on-implementation-and-operation-of-the-food-hygiene-rating-scheme-the-brand-standard-and-statutory-guidance . A copy of this document is also provided in the `2024J_TMA02_data/FSA/` directory.

A landing page on the FSA website provides an overview of the data related assets published by the Agency [https://www.food.gov.uk/our-data]. As well as a data catalogue [https://data.food.gov.uk/catalog], the FSA also publishes information on accessing their data via an open data landing page [https://ratings.food.gov.uk/open-data].

*For the purposes of this assessment, the FSA data we are interested in is the food hygiene ratings scheme (FHRS) data.*

## Question 1 (45 marks)

In this question, you will explore a publicly available dataset on food hygiene rating scheme scores in England. You will describe, but not implement, how the data may be represented for storage in a relational database. You will store the data in a MongoDB database, and generate a choropleth map to visualise one aspect of it. You will then compare the relative advantages and disadvantages of the relational versus document model for storing data of this type.

All the work for question 1 is contained in the notebook `yourPI_q1_2024.ipynb`. *You should rename the notebook to use your PI.*
  
## Question 2 (30 marks)

This question is designed to get you started on a data investigation that will be developed into a larger investigation for the end-of-module assessment (EMA).

While answering this question, you should ask yourself what stories the dataset might contain that could be explored using the techniques you have studied.

*You may find it useful to consider your data exploration notebooks as portfolio pieces in which you demonstrate what you have learned through studying TM351 in the context of using data analysis and visualisation techniques in an investigative or exploratory setting.*

You are encouraged to make use of a database, where appropriate, that contains cleaned and validated data when completing this question. For example, you may use the MongoDB database that you created in Question 1. If you are unable to use a database, or prefer not to, you will not be penalised if you do your work using data loaded from a file directly into a dataframe, although you should justify why you have not used a database approach. If instead you create a DataFrame from the original datafiles (for example, `2024J_TMA02_data/FSA/FHRS870en-GB.json`) and use that for your investigation, you should address any data cleaning and validation considerations, as explored in Question 1, part b, before making analytical use of it.


### 2(a)

Question 1 will have given you a basic feel for the Food Standards Agency food hygiene ratings scheme (FHRS) data.

In this question, you should further explore the FHRS data and investigate another aspect of it, or answer a question of your own devising based on it.

*You are not limited to reporting on just food hygiene rating scores. For example, you might also use the FHRS dataset as a basis for a range of other exploratory questions, such as geographically profiling various food related businesses, comparing the size of corporate groupings or other forms of "competitive intelligence", etc.*

For this part of question 2, you should work in your

`yourPI_q2a_lab_notebook.ipynb`

notebook, under the heading "Question 2(a)", renaming the notebook to use your PI. Treat this notebook as a lab notebook: keep all the work you do and don’t tidy it up too much or delete work that turns out to be a dead end; if you have code cells which do not execute correctly, make a comment in the code cell regarding the error.

#### Restoring a sample MongoDB database, if required

This TMA has been designed so that you should be able to make use of the MongoDB database you created in question 1 in this part of the question too.

If you struggled with creating the MongoDB in question 1, but would like to use the database in this part,  we have provided a means for you to do so.

For convenience, we have provided a back-up of the Mongo database (`./2024J_TMA02_data/tma02-q1-mongo-fsa.zip`) as it might have been updated by the activities in question 1. You can restore the `fsa` database from this backup file by running the command:

The command:

`!unzip ./2024J_TMA02_data/tma02-q1-mongo-fsa.zip`

will unzip the backup data into a directory `./mongo_backups`. You can then restore a Mongo database from this backup directory by running the command:

`!mongorestore --db=fsa ./mongo_backups/fsa`

To restore the data into a new Mongo db database (called `fsa2`, for example), use:

`!mongorestore --db=fsa2 ./mongo_backups/fsa`

#### Using additional data

You may retrieve additional data from the Food Standards Agency as part of your investigation if you wish to do so, but you are not required to do so. The additional data may be obtained either as downloaded files or via the API and should be of the same form as the provided sample data. A code fragment demonstrating how to call the API is provided in the `yourPI_q2a_lab_notebook.ipynb` notebook.

If you do retrieve any additional data, you should describe and justify how you manage it, for example, by adding it to your database, or using a sensible file naming and management strategy

#### Presenting your answer

Use level 1 headings in Markdown cells in the Notebook to help your tutor identify regions in the Notebook that demonstrate you have performed the required steps. In addition, each discrete manipulation of the data should be presented in its own code cell (or cells, if it is clearer to break the code up a bit) and be preceded by at least one markdown cell explaining what the code is intended to do, and followed by at least one markdown cell explaining the code cell’s output or return value.

In summary, in your notebook you should investigate a question of your own devising using the FHRS data. Question 1 will have given you a basic feel for the data. You should:

- Summarise the main characteristics of the dataset that allow you to perform your exploration.
- Create and label at least two different plots to visualise different aspects of the data. You should use at least two different types of plot, e.g. scatter, line, bar, etc.
  - Bear in mind that your plots should have a purpose: they should be used for exploring or explaining some aspect of the data. So when presenting your plots, you should also interpret the plot in terms of what it says about the data, and what it means for exploring the data.
  - Any plots you include in your report for Part 2(b) must have a meaningful title, appropriately labelled axes and all the text should be legible.
- Create at least one folium map.
  - Your folium map should illustrate a different aspect of the data from your map in question 1(e).
  - As with your other plots, your map should reflect and communicate something that you have discovered about the data.
- Include notes critically evaluating what you think your investigations and visualisations tell you.

*If you use a prompt-based coding assistant such as CoPilot or ChatGPT to generate any of your code, add a comment to the code describing the prompt(s) you used to help generate it.*

(20 marks)

### 2(b)

For this part of question 2, you should work in your

`yourPI_TMA02_project.docx`

solution document, under the heading "Question 2(b)". In this part you will use your findings from part 2(a) to write a brief report using the following outline structure:

- Aims and objectives
- Background
- Sources of data (original source; locally managed source)
- Analysis pipeline
- Findings
- Conclusions
- References

Your report should be no more than 650 words. Some sections may be very short. You should present your results in a form that highlights the relevant results; you must include at least two, but no more than four, visualisations (including at least one folium map and at least one other visualisation).

You should critically evaluate your results and their presentation, including mentioning any confounding factors that may weaken your conclusions. These could include concerns about the reliability or coverage of the data, or other influences which are not included so you may want to consider what you learnt about the datasets in Question 1.

You should use references in your report, as appropriate, to support your conclusions and give a context for your investigation. All references (both the in-text citations and in the reference list) must be given in Cite them right Harvard style (Open University, 2023). You must include a reference to the notebook you used in your investigation so that your results may be independently verified.

Note: your notebook reference need be no more than: Name, Initials. (year) `yourPI_q2a_lab_notebook.ipynb`.

(10 marks)

## Question 3 (25 marks)

This question is designed to help you in the planning stage of the EMA. This is your opportunity to develop a work plan so your tutor can give you helpful, timely feedback.
Before you attempt this question you should read the EMA. Think about what you are being asked to do and how this builds on the analysis you did for Question 2.

A good answer to this question will mean you have mapped out your EMA work and got a good start at understanding what the EMA requires.

### 3(a)

For this part of question 3, you should work in your `yourPI_TMA02_project.docx` solution document, under the heading "Question 3(a)".

This part is designed to prompt you to think about the questions you will explore for your EMA. The EMA requires you to investigate an additional dataset and answer two questions: one on an additional dataset and one that requires a combination of the additional dataset and data from the FHRS dataset.

We have identified two datasets from which you must choose __one__ for your EMA data investigation. 


#### The Additional Identified Datasets

The datasets we have identified are:

1. Care home data from Care Quality Commission (CQC) containing residential care home names, addresses, organisational groupings and CQC ratings for care homes in England. Recently collected ratings data can be downloaded from:

https://www.cqc.org.uk/about-us/transparency/using-cqc-data

The official download filetype for this data is an `.ods` document:

`2024J_TMA02_data/CQC/01_May_2024_Latest_ratings.ods`

Whilst the `pandas.read_excel()` can open files of this type, it can be *very* slow, so we have provided a CSV version of the `Locations` sheet for *all* locations, not just residential care homes, from the `01_May_2024_Latest_ratings.ods` file as a more efficient alternative:

`2024J_TMA02_data/CQC/cqc_ratings_all_01_May_2024.csv`

__You should limit the scope of any CQC data used to just data associated with residential care home establishments.__

2. Data from the Department for Education relating to schools, including administrative information for all schools:

https://get-information-schools.service.gov.uk/Downloads

and performance data for schools in the Milton Keynes Local Authority area:

https://www.compare-school-performance.service.gov.uk/

For performance data for schools for other groupings / areas, use the UI to select the data you want to download. Two downloaded datasets are provided, although you are free to download other school performance related datasets from the link provided:

   - establishment data the UK: `2024J_TMA02_data/Schools/edubasealldata20240603.csv`
   - performance indicators data (Milton Keynes local authority area: `2024J_TMA02_data/Schools/schools_performancetables_mk_22-23.zip`)

*The datasets are provided as they were downloaded (default file encodings, file types, etc.).*

You are welcome to download your own recent versions of the data from the locations specified. We have provided a sample data file from each of the sources. You may use this provided data, although the data it contains may be outdated compared to the data that is available from the source websites.

*Recall that the provided FHRS data used in the previous parts of the TMA was limited to establishments in the Milton Keynes local authority area. You may use additional FHRS ratings data obtained from Food Standards Agency website although you are not required to do so.*

Open the datasets and explore what is in them. At this point you may want to create your project diary (see part c) and use it for these very preliminary investigations. Consider what questions you could ask of the datasets and how you would go about answering them.

For each of the following, write a paragraph or two in your solution document, explaining and justifying your choice:

1. Which additional dataset you have chosen.

2. A question you can investigate using just this additional dataset and why this dataset can answer it.

3. Another question, which you can answer only by joining or otherwise combining the food ratings dataset and the additional dataset you have chosen. You should also explain why this combination of datasets can answer that question.

At some point in the EMA data investigation, you will need to use a `folium` map, so you
should consider this as you develop your questions.

At this stage, you are not committing to the exact questions that you will explore in the EMA. The feedback from your tutor will help you to refine your questions. Engaging with the EMA at this early stage will give you the best chance of successfully completing the EMA and the module.

__(10 marks)__


### 3(b) Strategic Concerns

For this part of question 3, you should work in your `yourPI_TMA02_project.docx` solution document, under the heading "Question 3(b)".

Think about what you are being asked to do in the EMA and how this builds on the analysis you did for Question 2. How could you address the investigation questions you proposed in Part 3(a)?

Describe how you intend to store, combine and analyse the data, and how you intend to visualise your results. Identify and briefly describe the tools and techniques you could use. This is an opportunity for your tutor to give feedback on your approach before you do too much work on it.

__(5 Marks)__

### 3(c)

Set out a work plan of activities including timescales and milestones for completing the EMA. The study planner allocates four weeks at the end of the module for working on the EMA (and you should spend about 30 hours on it). However, it is best to start work on your EMA as soon as possible to allow for discussion and time to develop your thoughts.

Your work plan can take any form that you find helpful, for instance a list or a diagram. It should be realistic and it should be possible to modify the plan and add detail as you progress.

Either submit your work plan as part of your `yourPI_TMA02_project.docx` solution document, under the heading "Question 3(c)", or if you prefer to present your workplan in a spreadsheet, then create a spreadsheet named: `yourPI_workplan.xlsx`

You will use your notebook named `yourPI_project_diary.ipynb` as a project diary. Use the notebook to record your explorations, results, notes and what you need to do.

For TMA02, your project diary should contain at least the following two cells:

1. a code cell importing and briefly examining the dataset you chose in Part 3(a), and

2. a markdown cell or code cell indicating how you might combine your Part 3(a) dataset with data from the FHRS data.

There does not need to be much detail at this stage, but you need to have a clear vision as to how you are going to proceed.

You may treat the project diary as your personal lab Notebook. It will not be assessed beyond the initial Notebook you submit for TMA 02. However, you should to include it as supporting evidence for your EMA.

Your tutor will provide feedback based on what you submit. Complete this part to the best of your ability to give a good basis for informing discussion with your tutor as you work on the remainder of the module.

__(10 marks)__

## References

CQC (2024) CQC Ratings, 01 May 2024 (`01_May_2024_Latest_ratings.ods`, *Active locations and Registered Providers, by latest published rating*): public sector Care quality Commission data sourced and shared from the Care Quality Commission (https://www.cqc.org.uk/about-us/transparency/using-cqc-data) under the terms of the Open Government License for Public Sector Information (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/). The CSV file represents the contents of the "Locations" tab of the original `.ods` data file saved as CSV. (Accessed: June 2024).

DfE (2024a) Schools organisation data,  `Schools/edubasealldata20240603.csv`: public sector downloaded from the gov.uk *Get Information about Schools* service, downloaded from: https://get-information-schools.service.gov.uk/Downloads (*All establishment data / Establishment fields*) (Accessed: June 2024).

DfE (2024b) School performance data for Milton Keynes Local Authority area, 2022-23, `Schools/schools_performancetables_mk_22-23.zip`, downloaded from the gov.uk *Compare school and college performance in England* service / https://www.compare-school-performance.service.gov.uk/ (Accessed: June 2024).

FSA (2023) — *Food Hygiene Rating Scheme: Guidance for local authorities on implementation and operation- the Brand Standard (revision 8)*, June 2023. Available at: https://www.food.gov.uk/local-authorities/guidance-on-implementation-and-operation-of-the-food-hygiene-rating-scheme-the-brand-standard-and-statutory-guidance (Accessed: 24 October 2024).

FSA (2024a) — Food Hygiene Ratings website, https://ratings.food.gov.uk/ (Accessed: 25 October 2024).

FSA (2024b) — `FSA/FHRS870en-GB.json`: public sector food standards hygiene ratings scheme (FHRS) data for Milton Keyenes Local Authority area downloaded from `food.gov.uk` under the terms of the Open Government License for Public Sector Information (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/). Download page: https://data.food.gov.uk/catalog/datasets/38dd8d6a-5ab1-4f50-b753-ab33288e3200 (Accessed: June 2024).

FSA (2024c) — `FSA/ScoreDescriptors.xml`: labels and descriptions for interpreting FHRS scores, downloaded from https://ratings.food.gov.uk/open-data-resources/lookupData/ScoreDescriptors.xml (Accessed: June 2024).

Open University (2024a) Generative AI for students https://about.open.ac.uk/policies-and-reports/policies-and-statements/gen-ai/generative-ai-students (Accessed: 29 October 2024).

Open University (2024b) Quick guide to Harvard referencing (Cite Them Right). Available at: https://www5.open.ac.uk/library/referencing-and-plagiarism/quick-guide-to-harvard-referencing-cite-them-right (Accessed: 29 October 2024).

## Acknowledgements

The UK food hygiene rating data published by the Food Standards Agency is © *Crown copyright* and licensed under the terms of the *Open Government Licence (OGL) version 3* (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The Care Quality Commission (CQC) data is copyright the *Care Quality Commission* and licensed under the terms of the *Open Government Licence (OGL) version 3* (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The schools data is *Crown Copyright* and licensed under the terms of the *Open Government Licence (OGL) version 3* (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

The original boundary data downloaded from the Office of National Statistics (ONS) Open Geography Portal is ONS Geography Open Data published under Crown copyright and licensed under the terms of the *Open Government Licence (OGL) version 3* (https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).