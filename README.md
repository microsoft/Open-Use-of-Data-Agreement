# The Open Use of Data Agreement (O-UDA)

## O-UDA 1.0 is Deprecitated

We are no longer maintaining this repository. We reccomend that users upgrade to [CDLA-Permissive-2.0](https://cdla.dev/permissive-2-0/). That license agreement provides a consice simple permissive data agreement inspired by O-UDA and CDLA-permissive-1.0 as outlined [here](https://www.linuxfoundation.org/press-release/enabling-easier-collaboration-on-open-data-for-ai-and-ml-with-cdla-permissive-20/).

## Goal
Sharing data can help address some of society’s biggest challenges and can help individuals and organizations be more innovative, efficient, and productive. The Open Use of Data Agreement (O-UDA) is intended to make it easier for individuals and organizations that want to share data to do so, with minimal requirements for users and no restrictions on use. The O-UDA is complemented by the [Computational Use of Data Agreement (C-UDA)](https://github.com/microsoft/Computational-Use-of-Data-Agreement), an agreement intended for situations where a specific data use scenario is desirable or required.

## Overview

The O-UDA is a simple agreement used to permit anyone to use data under the agreement for any purpose, with only minimal obligations.
In short:

*	Use of data under the agreement carries no obligations.
*	Redistribution of the Results from use of the data under the agreement—including results of analysis of the data or ML models trained with the data—carries no obligations.
*	Redistribution of data under the agreement—modified or unmodified—carries two minor obligations. First, the redistributor must pass on all attribution information. Second, the redistributor must pass on the warranty and liability disclaimers from the data provider.
* The redistribution obligations are designed to encourage sharing by limiting the liability of the data provider and ensuring that those downstream can identify where the data came from.

## Contemplated use case

We envision that this agreement is suitable for situations where the original data provider created a data set, is reasonably certain of its ability to share the data set, and wants to be clear that the Output from any analysis of the data is not restricted.

This agreement also does not restrict the use of any portions of a data set that are in the public domain or that can be used, modified, or distributed for any use permitted by any legal exception or limitation.

With this agreement, Microsoft is not giving legal advice. Please consider your own circumstances and seek your own legal counsel as needed.

## The O-UDA meets the Open Data Definition
The O-UDA meets [the Open Definition](https://opendefinition.org/od/2.1/en/). It permits everything described in Section 2.1 of the Definition and only imposes conditions approved by Section 2.2: (1) retention of existing notices and (2) a preservation of warranty.

Additionally, as described below, the O-UDA is compatible with other widely used attribution-only open data licenses.

## Why a new agreement?
The agreement was created as a baseline open data agreement to accompany the [Computational Use of Data Agreement](https://github.com/microsoft/Computational-Use-of-Data-Agreement/tree/master). That said, we think it may fill a niche among the other open data licenses. The O-UDA  is a short and simple agreement that is focused on contractual rights. [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/legalcode) focuses on copyright or sui generis database rights that may or may not exist, depending on the circumstances and jurisdiction. Although [ODC-BY](https://opendatacommons.org/licenses/by/1.0/index.html) and [CDLA-Permissive](https://cdla.io/permissive-1-0/) include contractual rights, O-UDA has simplified language in comparison to both, and relative to the latter, has taken a data provider-friendly approach by not including representations about the data.

## License Compatibility
* [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/legalcode): Data released under the O-UDA can be released under CC-BY 4.0. We believe the Creative Commons' use of “Licensor” encompasses “Data Provider” and “Upstream Data Provider” in O-UDA and therefore meets the O-UDA obligations. Because CC-BY 4.0 does not permit relicensing, data released under CC-BY 4.0 cannot be released under O-UDA. Data sets containing data released under O-UDA and other data released under CC-BY 4.0 can be created and distributed under CC-BY 4.0.
* [ODC-BY](https://opendatacommons.org/licenses/by/1.0/index.html): Data released under the O-UDA can be released under ODC-BY. We believe the Open Data Commons' use of “Licensor” encompasses “Data Provider” and “Upstream Data Provider” in O-UDA and therefore meets the O-UDA obligations.  Since the ODC-BY does not permit relicensing, data released under ODC-BY cannot be released under O-UDA. Data sets containing data released under O-UDA and other data released under ODC-BY can be created and distributed under ODC-BY.
* [CDLA-Permissive](https://cdla.io/permissive-1-0/): Data released under the O-UDA can be released under CDLA-Permissive. CDLA-Permissive has representations on exercising reasonable care to assure that “(a) the Data it Publishes was created or generated by it or was obtained from others with the right to Publish the Data under this Agreement; and (b) Publication of such Data does not violate any privacy or confidentiality obligation undertaken by the Data Provider.” Although the O-UDA does not have a similar representation, if a data provider has taken reasonable care to make the representation for even the O-UDA released data, data sets containing data released under O-UDA and other data released under CDLA-Permissive can be created and distributed under CDLA-Permissive.
* [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html): Data released under the O-UDA can be released under GPLv3.  Since GPLv3 does not permit relicensing, data released under GPLv3 cannot be released under O-UDA. Data sets containing data released under O-UDA and other data released under GPLv3 can be created and distributed under GPLv3.

## Contributing
This project welcomes contributions and suggestions under [CC0-1.0](https://creativecommons.org/share-your-work/public-domain/cc0/). To suggest edits, open a [Pull Request](https://help.github.com/en/articles/editing-files-in-another-users-repository) or to start a discussion open an [Issue](https://help.github.com/en/articles/creating-an-issue). Or, if you prefer to submit comments via email, please submit them to [datainno@microsoft.com](mailto:datainno@microsoft.com). If you wish your comments to remain anonymous, please submit them by email and say so in the first line of the email.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

For more information on Microsoft’s resources to Removing Barriers to Data Innovation, visit [here](https://news.microsoft.com/datainnovation/).

## Legal Notices
Microsoft and any contributors grant you a license to content in this repository under CC0-1.0, see the [LICENSE](LICENSE) file.
