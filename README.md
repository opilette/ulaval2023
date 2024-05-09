# Online Companion to *De pierres et de rivières : mobilité et interactions dans les Laurentides méridionales*

***
### Introduction
For a master’s degree in archaeology at [Université Laval](https://www.ulaval.ca/), I conducted a comparative macroscopic analysis of lithic raw materials from 79 archaeological sites in the Province of Québec (Canada). These sites are located in the Ottawa River Valley, the Laurentians, and the Upper Mauricie regions. This repository serves as a complementary resource to my master's dissertation.

### The research
The goal of this research is to explore the social aspect of mobility among hunter-gatherer communities who inhabited, traversed, and navigated the southern Laurentians region within the territory that corresponds to the drainages of the Lièvre, Rouge, and Petite Nation rivers. The research proposes an analysis and comparison of archaeological data from a sample of **7,861 lithic artifacts found at 79 archaeological sites**. These sites were selected based on the abundance and diversity of their lithic assemblage and their spatial representativeness. The study is based on a two-part methodology. The first part involves a **macroscopic characterization** of lithic tool and debris. The second part utilizes tools and concepts from network analysis and graph theory to conceptualize interactions between archaeological sites. Therefore, the research integrates a relational perspective of culture. This research demonstrates that the southern Laurentians region constitutes a relatively homogeneous cultural universe, and the most significant cultural variations are found between the southern part of the area of study (the Ottawa River Valley) and the northern part (Upper Mauricie). While new phenomena emerge from the projection of six graphs, the lack of chronological control over the data limits the interpretive scope of the method.

The research shows that the regional distribution of raw materials does not indicate territoriality structured by the drainages of the Lièvre, Rouge, and Petite Nation rivers. Instead, despite the lack of chronological data control, a clear distinction is observed between the northernmost sites of Upper Mauricie and the southernmost ones in the Ottawa Valley. It highlights the role of these rivers as cultural interaction “vectors” connecting the boreal world and the Ottawa Valley. Network analysis and visualizations are the fundamental tools used to understand the dataset.

### Purpose of this repository
Given the computational nature of my project, I believe it's essential to provide supplementary materials to support further research or projects possibly arising from this work. One crucial aspect, from this standpoint, involves sharing the raw data, scripts and maps.

This *Online Companion* is therefore a complementary resource associated with my original master's dissertation document, available in French in the [Université Laval Corpus repository](https://corpus.ulaval.ca/entities/publication/ee9661a6-f08a-4900-a6af-1d5953f5e2e0). If anyone is interested in details about this project, please feel free to contact me. You will find at the end of this document a section with citation guidelines to help you reference my work.

### Notes on raw data and scripts
The raw data of this project are provided as a tab-separated value `.tsv` file. It can also be saved as a `.csv` file with tabulation as a separator. This format ensures compatibility with various data analysis software and facilitates ease of use for researchers interested in conducting further analyses or building upon the data presented here. All the data tables shown in my dissertation can be reproduced by using the provided R scripts (see below).

#### Original manuscript
The official version of my dissertation can be found in the [Université Laval Corpus repository](https://corpus.ulaval.ca/entities/publication/ee9661a6-f08a-4900-a6af-1d5953f5e2e0). However, in the `data` folder, I provide an unofficial version of my final dissertation that respects my original custom pages labeling.

#### Using the scripts
To use the scripts, copy the raw data file into the same folder as the script. Then, open a new R session and set the working directory to the folder containing both the script and the raw data file. Next, run `source('script_file_name.r')` in the R console. Respond to any questions prompted in the command line. The scripts output a new file in the folder.

Here is a table summarizing the functions of the various scripts:

| Script | Reference | Description |
| :--- | :---: | :----------- |
| `sum.R` | ... | Outputs how many objects of each lithic raw material are at each site. |
| `matrices.R` | ...| Calculates the total quantity of each material at each archaeological site, and produces two output incidence/affiliation matrices: one weighted with the total quantities ('affMatTot.csv') and another as a presence-absence (binary) matrix ('affMatBin.csv'). |
| `table9.R` | Page 158 | Outputs the sum of objects per site. |
| `table10.R` | Page 159 | Outputs the number of different lithic materials found at each archaeological site.<br> *VAR_ALL*: total number of lithic materials.<br>*VAR_PART*: total number of specific materials*. |
| `table11.R` | Page 160 | Outputs the compiled quantity of each specific lithic material*. |
| `table12.R` | Page 161 | Outputs the quantity of sites where lithic materials are found. |
| `table13.R` | Page 162 | Outputs the distribution of unhafted bifacial tools (4b) by site and lithic material. |
| `table14.R` | Page 163 | Outputs the distribution of flake tools (4c) by site and lithic material. |
| `table15.R` | Page 164-168 | Outputs the distribution of debitage/debris (2b) by site and lithic material. |
| `table16.R` | Page 169 | Outputs the distribution of nuclei (4d) by site and lithic material. |

*See Pilette (2023: 171-227) 

### Citing the associated dissertation
`Chicago 17th`

Pilette, Olivier. 2023. “De pierres et de Rivières : mobilité et interactions dans les Laurentides méridionales.” Master’s thesis, Québec: Université Laval. https://corpus.ulaval.ca/entities/publication/ee9661a6-f08a-4900-a6af-1d5953f5e2e0.


`APA 7th`

Pilette, O. (2023). De pierres et de rivières: mobilité et interactions dans les Laurentides méridionales [Master’s thesis, Université Laval]. Corpus UL Repository. https://corpus.ulaval.ca/entities/publication/ee9661a6-f08a-4900-a6af-1d5953f5e2e0


`MLA 9th`

Pilette, Olivier. De pierres et de rivières : mobilité et interactions dans les Laurentides méridionales. 2023. Université Laval, Master’s thesis. Corpus UL, https://corpus.ulaval.ca/entities/publication/ee9661a6-f08a-4900-a6af-1d5953f5e2e0.
