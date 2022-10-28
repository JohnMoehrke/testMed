### testMed

This creates and [example MedicationStatement](MedicationStatement-ex-medication-0.html) with an inline resources that throw errors.

```
	The link '#in-Pharmacy' for "#in-Pharmacy" cannot be resolved (valid targets: [ex-medication-0, performers, segment-header, in-Request, publish-box, bottom, mr-nav, example-medicationstatement-example-of-a-medication-r4-minimal, segment-post-footer, mr-logo, ig-status, top, root, stripe, segment-footer, segment-navbar, segment-content, segment-breadcrumb, in-Dispense])
```

the in-Pharmacy is used by the in-Dispense, but is not referenced by the medicationStatement. So narrative creation seems to get confused.

### Source

The source code for this Implementation Guide can be found on [GitHub](https://github.com/JohnMoehrke/testMed)

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}

#### IP Statements

{% include ip-statements.xhtml %}
