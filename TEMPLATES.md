# Template Catalog

Tables mirror the repository folder structure so you can find a file by browsing the same tree on GitHub. Within each table, entries are grouped by function and sorted so related templates sit together.

---

## `general/general_Experiments/`

| File | Abstract |
| --- | --- |
| [`meta-analysis_SFB1638.eln`](general/general_Experiments/meta-analysis_SFB1638.eln) | Combines or compares results across multiple prior experiments. |
| [`ISA-linking-and-data-location_SFB1638.eln`](general/general_Experiments/ISA-linking-and-data-location_SFB1638.eln) | Add-fields-type template to add the ISA-assigning fields to any entry. Also contains fields to specify data saving location and a replicate bundling extra field. |

---

## `general/general_Resources/`

### Navigation & getting started

| File | Abstract |
| --- | --- |
| [`package_overview_SFB1638.eln`](general/general_Resources/package_overview_SFB1638.eln) | Top-level landing page for the whole template package — entry point for new users. |
| [`group_landing_page_SFB1638.eln`](general/general_Resources/group_landing_page_SFB1638.eln) | Team/group landing page with links to resources and experiments as well as key navigation entries. Customisable. |
| [`personal_landing_page_SFB1638.eln`](general/general_Resources/personal_landing_page_SFB1638.eln) | Individual user's personal landing page. |
| [`onboarding_checklist_SFB1638.eln`](general/general_Resources/onboarding_checklist_SFB1638.eln) | Step-by-step first-week checklist for new lab members. |

*Also see [`2_group_getting-started-guide.eln`](#other-life-sciences-resources) under Other Life Sciences resources — same function, wording adaptable beyond biomedical labs.*

### ISA / Investigation structure

| File | Abstract |
| --- | --- |
| [`ISA-Investigation_SFB1638.eln`](general/general_Resources/ISA-Investigation_SFB1638.eln) | Top-level ISA-inspired Investigation entry, grouping related studies. |
| [`ISA-Study_SFB1638.eln`](general/general_Resources/ISA-Study_SFB1638.eln) | ISA-inspired Study entry, sitting under an Investigation and grouping related experiments. Combine with `ISA-linking-and-data-location_SFB1638.eln` to link experiments to studies. |

### Instruments

| File | Abstract |
| --- | --- |
| [`Instruments_Machines_overview-page_SFB1638.eln`](general/general_Resources/Instruments_Machines_overview-page_SFB1638.eln) | Overview page indexing instrument entries set up with `Instruments_Machines_SFB1638.eln` template. |
| [`Instruments_Machines_SFB1638.eln`](general/general_Resources/Instruments_Machines_SFB1638.eln) | Individual instrument entry template with PIDINST field and RRID-linked software table. |
| [`Instruments_SOP-mini-DMP_SFB1638.eln`](general/general_Resources/Instruments_SOP-mini-DMP_SFB1638.eln) | Combined SOP and mini data management plan entry, linked from instrument entries. |

### Data & lab organisation

| File | Abstract |
| --- | --- |
| [`data_summary_SFB1638.eln`](general/general_Resources/data_summary_SFB1638.eln) | Short-form record for pulling together the outcome of related work. |
| [`replicate_bundle_SFB1638.eln`](general/general_Resources/replicate_bundle_SFB1638.eln) | Groups related replicate experiments under one record. Combine with `ISA-linking-and-data-location_SFB1638.eln` to link experiments to replicates. |
| [`Method_Protocol_SFB1638.eln`](general/general_Resources/Method_Protocol_SFB1638.eln) | General-purpose method/protocol documentation entry with suggestion for version tracking. |
| [`group_meeting_SFB1638.eln`](general/general_Resources/group_meeting_SFB1638.eln) | Group meeting notes/minutes template. |
| [`publication_planning_SFB1638.eln`](general/general_Resources/publication_planning_SFB1638.eln) | Tracks planned publications and their supporting data/experiments. |

*Also see [`2_Lab_oversight-data_quality_SFB1638.eln`](#other-life-sciences-resources) under Other Life Sciences resources — same function, extra field searches adaptable beyond biomedical labs.*

---

## `2_Life_Sciences/2_Experiments/`

| File | Abstract |
| --- | --- |
| [`2_molecular_cloning_SFB1638.eln`](2_Life_Sciences/2_Experiments/2_molecular_cloning_SFB1638.eln) | Experiment template documenting a cloning workflow — not a ready-to-use template but currently meant as suggestion of a detailed standard workflow that makes users aware of components of good experimental reports. |
| [`2_multi-well-plates_SFB1638.eln`](2_Life_Sciences/2_Experiments/2_multi-well-plates_SFB1638.eln) | Different load-text-style experiment template for multi-well plate layouts. Import into main body to use as a plate layout to document your experimental setup visually. |

---

## `2_Life_Sciences/2_Resources/`

### Nucleic acids & vectors

| File | Abstract |
| --- | --- |
| [`2_Plasmid_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Plasmid_SFB1638.eln) | Central hub template for plasmids. Organism entries link to it via Vector_used; DNA prep entries link to it as parent. |
| [`2_synthetic_nucleic_acids_SFB1638.eln`](2_Life_Sciences/2_Resources/2_synthetic_nucleic_acids_SFB1638.eln) | Oligos and synthetic DNA/RNA (primers, sgRNAs, ssODNs). |
| [`2_expression_vector_overview_SFB1638.eln`](2_Life_Sciences/2_Resources/2_expression_vector_overview_SFB1638.eln) | Overview page for expression vector entries — navigation index built on the Plasmid template. |

### Organisms

| File | Abstract |
| --- | --- |
| [`2_Mammalian_cells_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Mammalian_cells_SFB1638.eln) | Mammalian cell line identity, source, GMO status, culture and authentication fields. Links to stock and GMO project entries. |
| [`2_Bacterial_strains_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Bacterial_strains_SFB1638.eln) | Bacterial strain identity, genotype, GMO status, growth conditions fields. Links to glycerol stock and GMO project. |
| [`2_Yeast_strains_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Yeast_strains_SFB1638.eln) | Yeast strain identity and derivation, parallel structure to the bacterial strains template. |
| [`2_Insect_cells_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Insect_cells_SFB1638.eln) | Insect cell line identity and derivation. Links to insect cell stock and GMO project. |
| [`2_Viral_particles_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Viral_particles_SFB1638.eln) | Viral vector/particle identity, titer, GMO status. Links to viral stock and, via Parent_plasmid, the originating plasmid. |
| [`2_Phages_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Phages_SFB1638.eln) | Phage strain identity and derivation. Links to phage stock. |
| [`2_Mice_rats_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Mice_rats_SFB1638.eln) | Mouse/rat line identity, genotype fields. Links to transgenic animal cryostock. |
| [`2_Drosophila_lines_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Drosophila_lines_SFB1638.eln) | Drosophila line identity and origin. Links to Drosophila live stock. |
| [`2_Other_model_organisms_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Other_model_organisms_SFB1638.eln) | Organism template for model organisms outside the dedicated categories (e.g. zebrafish, Xenopus). |
| [`2_C_elegans_strains_SFB1638.eln`](2_Life_Sciences/2_Resources/2_C_elegans_strains_SFB1638.eln) | C. elegans strain identity and derivation. Links to C. elegans frozen stock. |

### Stocks

| File | Abstract |
| --- | --- |
| [`2_Mammalian_cell_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Mammalian_cell_stock_SFB1638.eln) | Per-vial or per-batch stock tracking for mammalian cell lines. |
| [`2_Bacterial_glycerol_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Bacterial_glycerol_stock_SFB1638.eln) | Glycerol stock tracking for bacterial strains. |
| [`2_Yeast_glycerol_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Yeast_glycerol_stock_SFB1638.eln) | Glycerol stock tracking for yeast strains. |
| [`2_Insect_cell_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Insect_cell_stock_SFB1638.eln) | Per-vial or per-batch stock tracking for insect cell lines (Vial_status field). |
| [`2_Viral_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Viral_stock_SFB1638.eln) | Stock tracking for viral particle preparations, including titer. |
| [`2_Phage_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Phage_stock_SFB1638.eln) | Stock tracking for phage preparations. |
| [`2_Transgenic_animal_cryostock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Transgenic_animal_cryostock_SFB1638.eln) | Cryostock tracking for mouse/rat lines. |
| [`2_Drosophila_live_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Drosophila_live_stock_SFB1638.eln) | Live culture stock tracking for Drosophila lines. |
| [`2_C_elegans_frozen_stock_SFB1638.eln`](2_Life_Sciences/2_Resources/2_C_elegans_frozen_stock_SFB1638.eln) | Frozen stock tracking for C. elegans strains. |
| [`2_DNA_prep_SFB1638.eln`](2_Life_Sciences/2_Resources/2_DNA_prep_SFB1638.eln) | Stock-style entry for a plasmid DNA preparation. Child of the Plasmid template via Parent_plasmid. |

### Antibodies

| File | Abstract |
| --- | --- |
| [`2_antibodies_overview_SFB1638.eln`](2_Life_Sciences/2_Resources/2_antibodies_overview_SFB1638.eln) | Overview page indexing primary and secondary antibody entries via template components. |
| [`2_Primary_Antibody_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Primary_Antibody_SFB1638.eln) | Primary antibody identity, target, host species, validation data. |
| [`2_Primary_Antibody_Vial_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Primary_Antibody_Vial_SFB1638.eln) | Per-vial stock tracking for primary antibodies. |
| [`2_Secondary_Antibody_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Secondary_Antibody_SFB1638.eln) | Secondary antibody identity, target species, conjugate, validation data. |
| [`2_Secondary_Antibody_Vial_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Secondary_Antibody_Vial_SFB1638.eln) | Per-vial stock tracking for secondary antibodies. |

### Proteins & reagents

| File | Abstract |
| --- | --- |
| [`2_proteins_reagents_SFB1638.eln`](2_Life_Sciences/2_Resources/2_proteins_reagents_SFB1638.eln) | Purified protein and reagent tracking. Optionally links back to the plasmid used for expression. |

### GreenBook — Biological Safety

| File | Abstract |
| --- | --- |
| [`2_GMO_overview_SFB1638.eln`](2_Life_Sciences/2_Resources/2_GMO_overview_SFB1638.eln) | Overview page listing registered GMO entries. |
| [`2_BSL1_recording_overview_SFB1638.eln`](2_Life_Sciences/2_Resources/2_BSL1_recording_overview_SFB1638.eln) | Overview page for biosafety recording related templates. |
| [`2_BSL1_green_book_overview_SFB1638.eln`](2_Life_Sciences/2_Resources/2_BSL1_green_book_overview_SFB1638.eln) | Landing page indexing all GreenBook biosafety entries (GMO projects, adverse events, training records). |
| [`2_BSL1_project_SFB1638.eln`](2_Life_Sciences/2_Resources/2_BSL1_project_SFB1638.eln) | GMO Project registration entry (UNI.HD.xx.xx numbering). Organism entries link to this via GMO_Project. |
| [`2_BSL1_adverse_event_SFB1638.eln`](2_Life_Sciences/2_Resources/2_BSL1_adverse_event_SFB1638.eln) | Adverse event / incident report entry. |
| [`2_BSL1_training_record_SFB1638.eln`](2_Life_Sciences/2_Resources/2_BSL1_training_record_SFB1638.eln) | GenTSV training record entry for individual staff biosafety training. |

### Other Life Sciences resources

| File | Abstract |
| --- | --- |
| [`2_group_getting-started-guide.eln`](2_Life_Sciences/2_Resources/2_group_getting-started-guide.eln) | Getting-started guide entry for new team members setting up their eLabFTW workspace. Wording specific to biomedical research but could be adjusted. |
| [`2_Lab_oversight-data_quality_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Lab_oversight-data_quality_SFB1638.eln) | Supports lab oversight or data-quality review. Pulls out entries that e.g. are missing an RRID, have low stock. Wording and extra fields searches specific to biomedical research but could be adjusted. |
| [`2_Excel_templates_SFB1638.eln`](2_Life_Sciences/2_Resources/2_Excel_templates_SFB1638.eln) | Bundles Excel-based tools (e.g. 96-well plate layout translators) supplied by the SFB 1638 INF Team. Aim is to add to this when new templates are developed. |
