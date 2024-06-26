### testMed

This is showing two bugs in the IG Publisher

#### Rendering of Contained resources links

When DiagnosticReport contains Observations. The IG Publihser tries to put links to the Observation rendering, but it doesn't exist. Resulting in links that don't work, and errors in the QA log

- [https://github.com/HL7/fhir-ig-publisher/issues/913](https://github.com/HL7/fhir-ig-publisher/issues/913)

#### Contained Observations with multiple notes

If a contained Observation has more than one .note; the IG publisher will crash

- github issue [https://github.com/HL7/fhir-ig-publisher/issues/915](https://github.com/HL7/fhir-ig-publisher/issues/915)
- the testMed IG will not crash unless you remove the commented out second .note.

#### SearchParameters on extensions

In theory the search parameter defined for an extension will automatically be cross linked.

- [fhir chat](https://chat.fhir.org/#narrow/stream/179280-fhir.2Finfrastructure-wg/topic/SearchParameters.20and.20Extensions.20in.20core.20spec)

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
