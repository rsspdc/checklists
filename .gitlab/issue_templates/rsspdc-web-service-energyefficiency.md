From the Web-based service*[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## 🌱 Energy Efficiency

*How can you and your users minimise wasted energy?*

- [ ] Consideration has been given to the energy efficiency of the service
	- [ ] 🥉Bronze *(easy)*: Two or more from
		- [ ] Your web servers are configured appropriately to make best use of their available resources
		- [ ] You have provisioned appropriately specified hardware for your service and size of user-base
		- [ ] You have profiled your software and optimised any readily addressed bottlenecks
	- [ ] 🥈Silver *(intermediate)*: 
		- [ ] 
		- [ ] Estimate and share the carbon footprint of your service using system logs with a tool such as [green algorithms calculator](http://calculator.green-algorithms.org/)
	- [ ] 🥇Gold *(intermediate)*: Two or more from:
		- [ ] You have detailed profiling of the usage of your service and have optimised your configuration accordingly
		- [ ] You have detailed profiling of the resource usage of your service and have optimised your hardware provisioning accordingly
		- [ ] You have profiled your software and optimised bottlenecks, and are making use of parallelism and/or hardware acceleration is possible / beneficial to efficiency.
	- [ ] 🏆Platinum *(hard)*: 
		- [ ] 
		- [ ] Carbon intensity is considered in deployment location, potentially in real-time if dynamically scaling deployments that span multiple geographic regions
 
<details>
Efficiency in a program deployed as a web service can be as much or more about how it is configured than the efficiency of the underlying code, the larger the number of users a service has the larger the overall impact of small efficiency gains.
In many research contexts the number of users is small, though in some cases their computational demands may be high.
It may be uneconomical to spend the time to optimise as heavily as one might in applications with larger scale.
If possible profile the resource usage of your service in use and optimise the low hanging fruit.

Appropriate caching, management of sessions on your web server(s), load balancing between multiple nodes (when you have them) and so on can have huge performance and efficiency impact.
An underpowered web server can for example often serve many more people if the number of concurrent session is limited the number that can comfortably be handled with that box's resources and it is allowed to handle many requests in rapid sequence rather than becoming overwhelmed by an excessive number of concurrent sessions.
Consulting with a professional systems administrator and/or devops professional (for larger deployments on modern cloud stacks) about how to optimise your service's deployment is likely a good idea if you are inexperienced in this domain.

The same considerations that apply to other software packages also apply to web services to refer to [that section](../software-packages.md) also for additional suggestions.

Get the most out of the resources that you have provisioned for your service, over or under provisioning can lead to inefficiencies to aim to match demand.
Automatically scaling services out can still carry considerable technical overhead and computational overhead in monitoring and responding to load and is unlikely to be worth the trouble in small deployments.

It may be valuable to share application specific optimisation tips for deployments of your service on community fora and/or as case studies in your documentation.

Academic user-bases are often scattered around the world, if you have a particular concentration of users in one location it may make sense to locate your physical infrastructure near to them to minimise latency.
However, if you have a global user-base anyway you might consider server infrastructure in a location with the least carbon intensity.

[The Environmentally Sustainable Computational Science forum](https://forum.escs-community.org) is a great place to find people to talk about these issues.

</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
