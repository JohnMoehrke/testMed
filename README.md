# Status

October 2023

used to test extension for artifact name and description that can be carried directly in xml/json examples. 

August 2023

Added example of a contained Provenance. Works fine.

December 2022

The original problem with rendering contained resources seems to be fixed. The medication shows fine with contained resources too.

# testMed

MedicationStatement testing for contained error.

	The link '#in-Pharmacy' for "#in-Pharmacy" cannot be resolved (valid targets: [ex-medication-0, performers, segment-header, in-Request, publish-box, bottom, mr-nav, example-medicationstatement-example-of-a-medication-r4-minimal, segment-post-footer, mr-logo, ig-status, top, root, stripe, segment-footer, segment-navbar, segment-content, segment-breadcrumb, in-Dispense])

the in-Pharmacy is used by the in-Dispense, but is not referenced by the medicationStatement. So narrative creation seems to get confused.

ci-build - http://build.fhir.org/ig/JohnMoehrke/testMed/branches/main/index.html

..
