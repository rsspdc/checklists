---
name: Record of a specific analysis
about:
title:[RSSPDC] <issue>
---

From the Record of a specific analysis *[Research Software Sharing, Publication, & Distribution Checklist](https://rsspdc.org)* [[repo](https://gitlab.com/rsspdc/checklists)]

version: alpha


## ⚖ Governance, Conduct, & Continuity

*How can you be excellent to each other, make good decisions well, and continue to do so?*

- [ ] The project has a suitable governance model
	- [ ] 🥉Bronze *(easy)*: The governance model is clearly communicated
	- [ ] 🥈Silver *(easy)*: Bronze Plus - Project has continuity planning in place (2 or more from)
		- [ ] Source archived and/or mirrored to other platforms
		- [ ] Public archives of key project governance documentation and plans for continuity of operations in the events such as the loss of key project infrastructure
		- [ ] Plans of action in the event project admin(s) are no longer available
	- [ ] 🥇Gold *(intermediate)*: Project has a governance model appropriate to its scale and goals
		- [ ] Project has clear and transparent processes
	- [ ] 🏆Platinum *(hard)*: Project has a track record of good governance and policy, any from:
		- [ ] Decisions have involved the appropriate person(s) and been well documented
		- [ ] Disputes are largely resolved in a respectful and amicable fashion
		- [ ] The project leadership has learned from any mistakes and implemented policy changes as a result
 
<details>
In the case of a record of a specific analysis it is likely that following the conclusion of that project it will become largely dormant.
You may however still encounter people refering to and making use of parts of the work and asking questions about it.
Therefore basis policies for any community spaces and user spuuort may still be sensible to indicate.
Continuity plannig is also still important as others may need to pick up where you left off at some point in the future.

<ul>
	<li>
	**Continuity planning: What happens to your project if something happens to you?**
	The code will likely live on due the distributed nature of git but what about the issue tracker, the website etc.
	Who else has the highest level of privilege on your project or a mechanism to attain it?
	The principle of least privilege dictates that you keep the number of people with this level of access to a minimum but you may then create a single point of failure.
	Password managers like [bitwarden](https://bitwarden.com/) have a feature where designated people can be given access to your vault if they request it and you do not deny it within a certain time-frame.
	This could provide a lower level admin with a mechanism to escalate their privileges if you are unable to do this for them.
	However, this delay might be an issue for continuity of operations if administrator action is needed within the waiting period.
	Game it out, have a plan, write it down, let people know you have a plan.
	</li>
	<li>
	User support
		<ul>
		<li>What support can users expect, or not expect?</li>
		<li>Where can they ask for it?</li>
		<li>Is there somewhere where users can provide support to other members of the user community, such as a forum?</li>
		<li>Can they pay for more support?</li>
		</ul>
	</li>
	<li>
		Whole project data longevity - what plans do you have in place to backup and archive materials pertaining to your project that are not under source control? e.g. issues in your bug tracker
	</li>
	<li>
	If you are the Benevolent Dictator For Life (BDFL) of your project and the Code of Conduct (CoC) is "Don't be a Dick" that's fine, for many individual hobby projects this a functional reality.
	Becoming a BDFL tends to be the default unless you take steps to avoid it and cultivate community governance as your project begins to grow - failing to do this and being stuck in charge can become quite the burden in sucessful projects.
	Be waring of adopting policies if you lack resources, time, interest, skill, or inclination to be an active enforcer, mediator and moderator of community norms and disputes, It is helpful to be clear about what you can and cannot commit to doing.
	Only by communicating this might you be able to find community members to help you with setting and enforcing these norms, if or when your community attains a scale where this becomes relevant - community management is its own skill set.
	If you can't moderate them avoid creating and/or continuing ungoverned community spaces that can become a liability for you and your project's reputation.
	Just as there are off-the-shelf licenses there are off-the-shelf codes of conduct, the [Contributor Covenant](https://www.contributor-covenant.org/) is perhaps the best known and most widely used, though may need some customisation to your needs.
	Adopting such a CoC gives you some guidance to follow if there is bad behaviour in your project's community and communicates that you as the project leadership take the responsibility of creating a respectful environment for collaboration seriously.
	It can also signal that your project is a place where everyone is wellcome but expected to treat one another with respect, and that failing to do so will result in penalties potentially including exclusion from the community.
	[The Turing Way](https://doi.org/10.5281/zenodo.3233853) provides quite a nice example of a [CoC developed specifically for their project](https://web.archive.org/web/20240412122958/https://book.the-turing-way.org/)
	You will need to provide contact information for the person(s) responsible for the enforcement of the CoC in the appropriate place and be able to follow up in the event it is used.
	git forges often recognise files with the name `CODE_OF_CONDUCT.md` in the root of project and provide a link to them on project home pages, so this is a good place to document such policies.
	If you are the BDFL of a small project then interpretation and enforcement of such a CoC tends to fall solely on you - game out some courses of action for what you'd do if faced with some common moderation challenges.
		<ul>
			<li>
				Once a project attracts a larger community there is greater scope for disputes and therefore for the need for dispute resolution mechanisms.
				Free/Libre and Open Source Software development and maintenance can be thought of as a commons so I would refer you to the [work of Elinor Ostrom](https://archive.org/details/ElinorOstromGoverningTheCommons) on how commons have been successfully (or unsuccessfully) governed when thinking about what processes to adopt for your project.
				More recently [Nathan Schneider's Governable Spaces: Democratic Design for Online Life](https://doi.org/10.1525/luminos.181) tackles some of these issues as applied to online spaces.
			</li>
			<li>
				This is summarised in the [8 Principles for Managing a Commons](https://web.archive.org/web/20240411163813/https://onthecommons.org/magazine/elinor-ostroms-8-principles-managing-commmons/index.html)
				<ol>
					<li>Define clear group boundaries.</li>
					<li>Match rules governing use of common goods to local needs and conditions.</li>
					<li>Ensure that those affected by the rules can participate in modifying the rules.</li>
					<li>Make sure the rule-making rights of community members are respected by outside authorities.</li>
					<li>Develop a system, carried out by community members, for monitoring members’ behavior.</li>
					<li>Use graduated sanctions for rule violators.</li>
					<li>Provide accessible, low-cost means for dispute resolution.</li>
					<li>Build responsibility for governing the common resource in nested tiers from the lowest level up to the entire interconnected system.</li>
				</ol>
			</li>
			<li>
				An informal [do-ocracy](https://web.archive.org/web/20230201164442/https://communityrule.info/modules/do-ocracy/) in the fiefdom of BDFL is often the default state of projects that have not given much conscious thought to how they want to be governed and are thus often subject to many of the same common failure modes of this model.
				How are decisions made in your project? Do you need the mechanisms of governance used by community and civil society organisations?
				By-laws, a committee and/or working groups, general meetings, votes, minutes? A version of these may be necessary to avoid [The Tyranny of Structurelessness](https://web.archive.org/web/20240406094310/https://www.jofreeman.com/joreen/tyranny.htm)
				How can you map these onto your development infrastructure and make the decisions of your governing bodies enactable and enforceable?
				Most of the places that offer code peer review are focused on software packages not code that is specific to your analysis. This makes sense as reviewer time is fairly scarce so focusing it on code that others are more likely to reuse is reasonable.
				If your code underpins a publication then in theory it may get reviewed as a part of the regular peer review process although in practice this does not appear to be all that common. If the journal to which you are submitting your work has no policy on the code review, and your reviewers do not take an interest in reviewing your code - even just the checking if it runs for them then
			</li>
		</ul>
	</li>
	<li>
	Does your project take donations?
	Does it have a trademark?
	Does it need a legal entity to hold these?
	Who is on the paperwork and who has signing authority?
	Who keeps track of expenditures?
	Tools & Organisations like [OpenCollective](https://opencollective.com/) can help with some of these issues.
	</li>
	<li>
	If your project has potential cybersecurity implications what procedures do you have in place for people to disclose vulnerabilities in the project so that they can be patched before they are made public.
	What systems do you have in place to disclose a vulnerability once it has been patched and ensure that users know that they need to update.
	</li>
</ul>


</details>

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://gitlab.com/rsspdc/checklists">Research Software Sharing, Publication, & Distribution Checklists</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://orcid.org/0000-0002-2574-9611">Richard J. Acton</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0</a></p>
