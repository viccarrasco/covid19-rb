# frozen_string_literal: true

module Validators
  class QueryValidator
    COUNTRIES = %w[
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
    ].freeze

    def valid?(query:)
      return true if query.nil?
      valid = query.key?(:countryTotal)    ? valid_country?(key: :countryTotal, query: query)    : true
      valid = query.key?(:countryTimeline) ? valid_country?(key: :countryTimeline, query: query) : valid
      valid
    end

    private

    def valid_country?(key:, query:)
      query[key].nil? ? false : COUNTRIES.include?(query[key].downcase)
    end
  end
end
