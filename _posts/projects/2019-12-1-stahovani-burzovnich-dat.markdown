---
layout: project
title:  "Stahování burzovních dat"
date:   2019-12-1 12:25:04 +0100
author: Jan Tříska
contact: jan.triska@upol.cz
excerpt_separator: <!--more-->
categories: projects
---

Pro analýzu trhu a vytváření obchodních strategií, je potřeba mít
  data o vývoji cen věcí, se kterými se obchoduje. Například na
  následujícím obrázku je vývoj směnného kurzu bitcoinu vzhledem k
  americkému dolaru.

![Vývoj směnného kurzu bitcoinu vzhledem k americkému dolaru.](/assets/img/projects/btcusd-candles.png)

<!--more-->

Na takových datech se pak testují vytvořené strategie, jestli jsou
  výdělečné. Je však potřeba je získat.

## Definice
Je potřeba udělat knihovnu v Common Lispu nebo v Clojure na
  stahování burzovních dat z různých zdrojů.

**Například:**
* Poloniex se lze dotazovat pomocí [REST API](https://docs.poloniex.com/#introduction)
* Dále pak [Bitfinex](https://docs.bitfinex.com/docs/rest-public)
* [Quandl](https://docs.quandl.com/docs/in-depth-usage)
* [Alpha Vantage](https://www.alphavantage.co/documentation/)

Knihovna by měla obsahovat nějakou formu backendu nebo-li sadu
  funkcí, které je potřeba naprogramovat, aby mohl být přidán další
  zdroj dat. Navíc API knihovna by pro začátek měla obsahovat funkci
  na vrácení posloupnosti [svíček](https://www.investopedia.com/trading/candlestick-charting-what-is-it/) pro zadaný zdroj dat, security (symbol
  či market), časový rozsah a časový interval svíčky.

## Formát výstupu

**Common Lisp:** Seznam asociačních seznamů, kde čas bude
    reprezentován třídou `=timestamp=` z knihovny `=local-time=`.

{% highlight Lisp linenos %}
(((:TIME @2019-12-01T01:00:00.00j0000+01:00)
        (:OPEN 0.00644501)
	(:HIGH 0.00666489)
	(:LOW 0.00634378)
	(:CLOSE 0.00657489)
	(:VOLUME 45.593674))
       ...)
{% endhighlight %}

**Clojure:** Vektor zobrazení, kde čas bude reprezentován třídou
    `=DateTime=` z knihovny `=clj-time=`.

{% highlight clojure linenos %}
[{:time #<DateTime 2019-12-01T01:00:00.000Z>
        :open 0.00644501
	:high 0.00666489
	:low 0.00634378
	:close 0.00657489
	:volume 45.593674}
       ...]
{% endhighlight %}



