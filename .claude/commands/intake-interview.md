# Health Profile Intake Interview

This command initiates the first-run onboarding process to populate basic health profile information.

## Instructions

You are conducting an intake interview for the Claude Health Helper repository. This is intended for **first-time setup only** - check if `user-context/params.md`, `user-context/meds.md`, and `user-context/conditions.md` already contain data before proceeding. If they do, inform the user that onboarding appears complete and ask if they want to update specific sections instead.

### Mode Selection

First, ask the user which mode they prefer:

1. **Interactive Interview**: You will ask questions one section at a time, and the user responds conversationally
2. **Text Paste**: The user will provide all their health information in a single text block for you to parse and organize

### Information to Gather

Collect the following information, organized into the appropriate files:

#### For `user-context/params.md` (Basic Parameters):
- Full name (or preferred identifier)
- Date of birth / Age
- Biological sex
- Blood type (if known)
- Height and weight
- Known allergies (medications, foods, environmental)
- Primary care physician name and contact (if applicable)
- Emergency contact information
- Health insurance details (optional)
- Preferred pharmacy (optional)

#### For `user-context/conditions.md` (Medical Conditions):
- Current diagnosed conditions
- When each condition was diagnosed
- Current status (active/managed/resolved)
- Treating physician for each condition (if applicable)
- Any relevant notes about severity or management

#### For `user-context/meds.md` (Medications):
- Current medications (prescription and OTC taken regularly)
- Dosage for each
- Frequency (e.g., once daily, twice daily, as needed)
- Prescribing physician (for prescriptions)
- Purpose/condition being treated
- Start date (if known)
- Any supplements taken regularly

### Output Format

After gathering information, create well-formatted markdown files:

**params.md format:**
```markdown
# User Health Parameters

## Basic Information
- **Name**: [Name]
- **Date of Birth**: [DOB]
- **Age**: [Age]
- **Biological Sex**: [Sex]
- **Blood Type**: [Blood type or "Unknown"]

## Physical Measurements
- **Height**: [Height]
- **Weight**: [Weight]
- **Last Updated**: [Date]

## Allergies
- [Allergy 1]: [Reaction type]
- [Allergy 2]: [Reaction type]

## Healthcare Contacts
- **Primary Care Physician**: [Name, Contact]
- **Emergency Contact**: [Name, Relationship, Phone]

## Additional Information
- **Health Insurance**: [Details or "Not provided"]
- **Preferred Pharmacy**: [Name, Location or "Not provided"]

---
*Profile created: [Date]*
*Last updated: [Date]*
```

**conditions.md format:**
```markdown
# Medical Conditions

## Active Conditions

### [Condition Name]
- **Diagnosed**: [Date/Year]
- **Status**: Active
- **Treating Physician**: [Name or "N/A"]
- **Notes**: [Any relevant details]

## Managed/Chronic Conditions

### [Condition Name]
- **Diagnosed**: [Date/Year]
- **Status**: Managed
- **Treating Physician**: [Name or "N/A"]
- **Notes**: [Management approach, current status]

## Resolved Conditions

### [Condition Name]
- **Diagnosed**: [Date/Year]
- **Resolved**: [Date/Year]
- **Notes**: [Any relevant history]

---
*Last updated: [Date]*
```

**meds.md format:**
```markdown
# Current Medications

## Prescription Medications

### [Medication Name]
- **Dosage**: [Amount]
- **Frequency**: [How often]
- **Purpose**: [Condition being treated]
- **Prescriber**: [Physician name]
- **Started**: [Date or "Unknown"]

## Over-the-Counter Medications (Regular Use)

### [Medication Name]
- **Dosage**: [Amount]
- **Frequency**: [How often]
- **Purpose**: [Reason for use]

## Supplements

### [Supplement Name]
- **Dosage**: [Amount]
- **Frequency**: [How often]
- **Purpose**: [Reason for use]

---
*Last updated: [Date]*
```

### Important Notes

- Be conversational and patient during the interview
- Reassure the user that all information stays local in this repository
- If the user doesn't know something (like blood type), mark it as "Unknown" - don't push
- For text paste mode, do your best to parse the information and ask clarifying questions only for ambiguities
- After creating the files, summarize what was recorded and remind the user they can update these files anytime
- Do NOT provide any medical advice or interpretations - just organize the information provided
