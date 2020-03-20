# Covid19

This tool's goal is to create an easy way to start building projects which have as goal fighting the unprecedented virus **Covid-19**. If you stumble upon this gem, please share it as someone might find it useful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'covid19-rb'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install covid19
```

## Retrieve Global Statistics

```ruby
statistics = Covid19::GlobalStatistics.retrieve
puts statistics
# =>
```

```json
{
    "results": [
        {
            "total_cases": 259273,
            "total_recovered": 89914,
            "total_unresolved": 158195,
            "total_deaths": 10546,
            "total_new_cases_today": 14379,
            "total_new_deaths_today": 518,
            "total_active_cases": 158813,
            "total_serious_cases": 7636,
            "source": {
                "url": "https://thevirustracker.com/"
            }
        }
    ],
    "stat": "ok"
}
```

## Retrieve Statistics by Country

```ruby
italy_statistics = Covid19::GlobalStatistics.by(country: 'it')
puts italy_statistics
# =>
```

```json
{
    "countrydata": [
        {
            "info": {
                "ourid": 78,
                "title": "Italy",
                "code": "IT",
                "source": "https://thevirustracker.com/italy-coronavirus-information-it"
            },
            "total_cases": 41035,
            "total_recovered": 4440,
            "total_unresolved": 0,
            "total_deaths": 3405,
            "total_new_cases_today": 0,
            "total_new_deaths_today": 0,
            "total_active_cases": 33190,
            "total_serious_cases": 2498
        }
    ],
    "countrynewsitems": [
        {
            "60": {
                "newsid": "iOG6m7",
                "title": "Leave Italy Washington U. tells study-abroad students after CDC coronavirus alert",
                "image": "https://thevirustracker.com/news-images/thumbs/5/leave-italy-washington-u-tells-study-abroad-students-after-cdc-coronavirus-alert-iOG6m7.jpg",
                "time": "3 March 2020 05:12",
                "url": "https://thevirustracker.com/story/leave-italy-washington-u-tells-study-abroad-students-after-cdc-coronavirus-alert-iOG6m7"
            },
            "61": {
                "newsid": "KhyueW",
                "title": "GRCC cancels culinary study abroad program to Italy due to coronavirus concerns",
                "image": "https://thevirustracker.com/news-images/thumbs/5/grcc-cancels-culinary-study-abroad-program-to-italy-due-to-coronavirus-concerns-KhyueW.jpg",
                "time": "3 March 2020 05:12",
                "url": "https://thevirustracker.com/story/grcc-cancels-culinary-study-abroad-program-to-italy-due-to-coronavirus-concerns-KhyueW"
            },
            "62": {
                "newsid": "OTW4jB",
                "title": "Pope tests negative for coronavirus Italy report says",
                "image": "https://thevirustracker.com/news-images/thumbs/5/pope-tests-negative-for-coronavirus-italy-report-says-OTW4jB.jpg",
                "time": "3 March 2020 06:45",
                "url": "https://thevirustracker.com/story/pope-tests-negative-for-coronavirus-italy-report-says-OTW4jB"
            },
            "63": {
                "newsid": "062yDp",
                "title": "Italy's coronavirus outbreak has ramifications for rest of Europe professor says",
                "image": "https://thevirustracker.com/news-images/thumbs/5/italy-s-coronavirus-outbreak-has-ramifications-for-rest-of-europe-professor-says-062yDp.jpg",
                "time": "3 March 2020 09:41",
                "url": "https://thevirustracker.com/story/italy-s-coronavirus-outbreak-has-ramifications-for-rest-of-europe-professor-says-062yDp"
            },
            "64": {
                "newsid": "UUp8f2",
                "title": "US Requires Airline Passengers From Iran But Not Italy Or Korea To Use Designated Airports To Control Coronavirus",
                "image": "https://thevirustracker.com/news-images/thumbs/5/us-requires-airline-passengers-from-iran-but-not-italy-or-korea-to-use-designated-airports-to-control-coronavirus-UUp8f2.jpg",
                "time": "3 March 2020 11:01",
                "url": "https://thevirustracker.com/story/us-requires-airline-passengers-from-iran-but-not-italy-or-korea-to-use-designated-airports-to-control-coronavirus-UUp8f2"
            },
            "65": {
                "newsid": "snjWyP",
                "title": "Coronavirus: Inter chief Zhang's 'clown' comment probed by Serie A",
                "image": "https://thevirustracker.com/news-images/thumbs/5/coronavirus-inter-chief-zhang-s-clown-comment-probed-by-serie-a-snjWyP.jpg",
                "time": "3 March 2020 12:48",
                "url": "https://thevirustracker.com/story/coronavirus-inter-chief-zhang-s-clown-comment-probed-by-serie-a-snjWyP"
            },
            "stat": "ok"
        }
    ]
}
```

## Timelines

You can retrieve a global timeline by doing the following:

```ruby
timeline = Covid19::Timeline.retrieve
```

You can also request a timeline by country as so:

```ruby
timeline = Covid19::Timeline.by(country: 'it')
puts timeline
# =>
```

```json
{
    "countrytimelinedata": [
        {
            "info": {
                "ourid": 78,
                "title": "Italy",
                "code": "IT",
                "source": "https://thevirustracker.com/italy-coronavirus-information-it"
            }
        }
    ],
    "timelineitems": [
        {
            "3/17/2020": {
                "new_daily_cases": 3526,
                "new_daily_deaths": 345,
                "total_cases": 31506,
                "total_recoveries": 2941,
                "total_deaths": 2503
            },
            "3/18/2020": {
                "new_daily_cases": 4207,
                "new_daily_deaths": 475,
                "total_cases": 35713,
                "total_recoveries": 4025,
                "total_deaths": 2978
            },
            "3/19/2020": {
                "new_daily_cases": 5322,
                "new_daily_deaths": 427,
                "total_cases": 41035,
                "total_recoveries": 4440,
                "total_deaths": 3405
            },
            "3/20/2020": {
                "new_daily_cases": 0,
                "new_daily_deaths": 0,
                "total_cases": 41035,
                "total_recoveries": 4440,
                "total_deaths": 3405
            },
            "stat": "ok"
        }
    ]
}
```

## News

By default the news will be retrieved from [The World Health Organization](https://www.who.int/)

```ruby
who = Covid19::News.retrieve
```

```json
{
   "title":"News (English) - World Health Organization",
   "description":"Corporate news releases, statements, and notes for media issued by the World Health Organization.",
   "entries":[
      {
         "title":"Dracunculiasis eradication: intensifying surveillance amid continued zero human cases in Ethiopia and Mali",
         "link":"https://www.who.int/news-room/detail/19-03-2020-dracunculiasis-eradication-intensifying-surveillance-amid-continued-zero-human-cases-in-ethiopia-and-mali",
         "date":"Thu, 19 Mar 2020 18:23:38 -0000",
         "description":"In 2019, Ethiopia and Mali reported zero human cases of dracunculiasis (guinea-worm disease), although the total number of human cases reported to the World Health Organization (WHO) last year peaked at 54 cases.nWhile surveillance activities have been stepped-up in countries reporting cases, hundreds more field workers and volunteers are being trained, and, cross-border vigilance are being carried out to prevent transmission."
      },
      {
         "title":"CND accepts all WHO recommendations on the control of several psychoactive substances from the 42nd ECDD meeting",
         "link":"https://www.who.int/news-room/detail/18-03-2020-c-n-d-accepts-all-w-h-o-recommendations-from-42nd-e-c-d-d",
         "date":"Thu, 19 Mar 2020 08:20:13 -0000",
         "description":"During its 63rd session, the Commission on Narcotic Drugs (CND) accepted all recommendations from the 42nd meeting of the WHO Expert Committee on Drug Dependence (ECDD)."
      },
      {
         "title":"Water and Climate Change",
         "link":"https://www.who.int/news-room/detail/17-03-2020-water-and-climate-change",
         "date":"Mon, 16 Mar 2020 17:08:49 -0000",
         "description":"<p>World Water Day 2020 is about water and climate change &ndash; and how the two are inextricably linked. This year&rsquo;s campaign shows how our use of water will help reduce floods, droughts, scarcity and pollution, and will help fight climate change itself. By adapting to the water effects of climate change, we will protect health and save lives. And, by using water more efficiently, we will reduce greenhouse gases. Our key messages are clear:</p><ul><li>We cannot afford to wait. Climate policy makers must put water at the heart of action plans.</li><li>Climate change effects water supplies and human health.</li><li>Health systems need to prepare for more water-related disease associated with climate change.</li><li>Water can help fight climate change and protect health. There are sustainable, affordable and scalable water and sanitation solutions.</li><li>Everyone has a role to play. In our daily lives, there are surprisingly easy steps we can all take to address climate change, and protect health.</li></ul><p></p>"
      }
   ]
}
```

You may also retrieve information from another source if you know the rss feed's url. Please check [Arssene](https://github.com/viccarrasco/arssene) for further information.

```ruby
feed = 'https://tools.cdc.gov/api/v2/resources/media/403372.rss'
news = Covid19::News.retrieve(rss: feed)
puts news
# =>
```

```json
{
    "title": "2019 Novel Coronavirus",
    "description": "The Centers for Disease Control and Prevention (CDC) is closely monitoring an outbreak of respiratory illness caused by a novel (new) coronavirus first identified in Wuhan, Hubei Province, China.",
    "entries": [
        {
            "title": "Resources for Large Community Events & Mass Gatherings",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405375",
            "date": "Fri, 20 Mar 2020 15:00:00 +0000",
            "description": "Resources for large community events and mass gatherings"
        },
        {
            "title": "Environmental Cleaning and Disinfection Recommendations",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=404586",
            "date": "Fri, 20 Mar 2020 15:00:00 +0000",
            "description": "Environmental Cleaning and Disinfection Recommendations"
        },
        {
            "title": "Interim Guidance for Businesses and Employers",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=403631",
            "date": "Fri, 20 Mar 2020 15:00:00 +0000",
            "description": "The following interim guidance may help prevent workplace exposures to acute respiratory illnesses, including COVID-19, in non-healthcare settings. The guidance also provides planning considerations if there are more widespread, community outbreaks of COVID-19."
        },
        {
            "title": "Get Your Community- and Faith-Based Organizations Ready for Coronavirus Disease 2019",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405374",
            "date": "Fri, 20 Mar 2020 14:00:00 +0000",
            "description": "This interim guidance is to help community- and faith-based organizations (CFBOs), whose members may include vulnerable populations, plan for community transmission of coronavirus disease (COVID-19) in the United States."
        },
        {
            "title": "Get Your Mass Gatherings or Large Community Events Ready",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=404922",
            "date": "Fri, 20 Mar 2020 14:00:00 +0000",
            "description": "This interim guidance is intended for organizers and staff responsible for planning mass gatherings or large community events in the United States. A mass gathering is a planned or spontaneous event with a large number of people in attendance that could strain the planning and response resources of the community hosting the event, such as a concert, festival, conference, or sporting event."
        },
        {
            "title": "Disinfecting Your Facility if Someone is Sick",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405360",
            "date": "Thu, 19 Mar 2020 20:00:00 +0000",
            "description": "Steps to disinfect your facility if someone is sick."
        },
        {
            "title": "Taking Advantage of the 15-Day Pause to Slow the Spread of COVID-19",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405368",
            "date": "Thu, 19 Mar 2020 18:00:00 +0000",
            "description": "Steps every sector can take during the 15-day pause to plan as One Community"
        },
        {
            "title": "Travelers from Countries with Widespread Sustained (Ongoing) Transmission Arriving in the United States",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405367",
            "date": "Thu, 19 Mar 2020 18:00:00 +0000",
            "description": "Depending on your travel history, you will be asked to stay home for a period of 14 days from the time you left an area with widespread or ongoing community spread."
        },
        {
            "title": "Caring for someone at home",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405343",
            "date": "Thu, 19 Mar 2020 18:00:00 +0000",
            "description": "Most people who get sick with COVID-19 will have only mild illness and should recover at home. Care at home can help stop the spread of COVID-19 and help protect people who are at risk for getting seriously ill from COVID-19."
        },
        {
            "title": "Interim Infection Prevention and Control Recommendations for Patients with Suspected or Confirmed Coronavirus Disease 2019 (COVID-19) in Healthcare Settings",
            "link": "https://tools.cdc.gov/api/embed/downloader/download.asp?m=403372&c=405362",
            "date": "Thu, 19 Mar 2020 18:00:00 +0000",
            "description": "This interim guidance has been updated based on currently available information about COVID-19 and the current situation in the United States, which includes reports of cases of community transmission, infections identified in healthcare personnel (HCP), and shortages of facemasks, N95 filtering facepiece respirators (FFRs) (commonly known as N95 respirators), and gowns."
        }
    ]
}
```

## Accepted parameters

For `country` please use one of the following keys:

```ruby
af al dz as ad ao ai aq ag ar am aw au at az bs bh bd bb by
be bz bj bm bt bo ba bw bv br io bn bg bf bi kh cm ca cv ky
cf td cl cn cx cc co km cg cd ck cr ci hr cu cy cz dk dj dm
do ec eg sv gq er ee et fk fo fj fi fr gf pf tf ga gm ge de
gh gi gr gl gd gp gu gt gn gw gy ht hm va hn hk hu is in id
ir iq ie il it jm jp jo kz ke ki kp kr kw kg la lv lb ls lr
ly li lt lu mo mk mg mw my mv ml mt mh mq mr mu yt mx fm md
mc mn ms ma mz mm na nr np nl an nc nz ni ne ng nu nf mp no
om pk pw ps pa pg py pe ph pn pl pt pr qa re ro ru rw sh kn
lc pm vc ws sm st sa sn cs sc sl sg sk si sb so za gs sp lk
sd sr sj sz se ch sy tw tj tz th tl tg tk to tt tn tr tm tc
tv ug ua ae uk us um uy uz vu ve vn vg vi wf eh ye zm zw
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/viccarrasco/covid19. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/covid19/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Covid19 project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/covid19/blob/master/CODE_OF_CONDUCT.md).
