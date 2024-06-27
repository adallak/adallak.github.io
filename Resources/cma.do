*** Causal mediation analysis webinar 4/9/24 ** 

webuse wellbeing
list wellbeing bonotonin exercise in 1/5, abbrevate(12) clean

mediate (wellbeing) (bonotonin) (exercise)

mediate, aequations

mediate (wellbeing) (bonotonin) (exercise), aequations nointeract

mediate (wellbeing) (bonotonin) (exercise), pomeans

mediate (wellbeing) (bonotonin) (exercise), all

** add covariates

mediate (wellbeing basewell age gender hstatus) ///
		(bonotonin basebono age gender hstatus) ///
		(exercise)
		
estat proportion

** binary outcome and mediator

mediate (bwellbeing basewell age gender hstatus, logit) ///
		(bbonotonin basebono age gender hstatus, logit) ///
		(exercise)

estat rr

estat or

* multivalued treatment

mediate (bwellbeing basewell age gender hstatus, logit) ///
		(bbonotonin basebono age gender hstatus, logit) ///
		(exercise)

* continuous treatment
generate cexercise = mexercise*30+rnormal(0,10) /* create continuous exercise
just for demonstration purposes */

mediate (bwellbeing basewell age gender hstatus, logit) ///
		(bbonotonin basebono age gender hstatus, logit) ///
		(cexercise, continuous(30 60 90))

estat effectplot

* count mediator

webuse birthweight, clear
list in 1/5, clean

mediate (bweight sespar c.age##c.age, expmean) ///
		(ncigs sespar c.age##c.age, poisson)   ///
		(college), nointeract
		
estat irr

* controlled direct effects
estat cde, mvalue(0 1)

estat cde, mvalue(0 1) contrast
