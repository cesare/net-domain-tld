# -*- coding: utf-8 -*-

module Net # :nodoc:
  module Domain # :nodoc:
    module TLD
      KNOWN_DOMAINS = {
        'arpa' => :infrastructure,
        'ac' => :country_code,
        'ad' => :country_code,
        'ae' => :country_code,
        'af' => :country_code,
        'ag' => :country_code,
        'ai' => :country_code,
        'al' => :country_code,
        'am' => :country_code,
        'an' => :country_code,
        'ao' => :country_code,
        'aq' => :country_code,
        'ar' => :country_code,
        'as' => :country_code,
        'at' => :country_code,
        'au' => :country_code,
        'aw' => :country_code,
        'ax' => :country_code,
        'az' => :country_code,
        'ba' => :country_code,
        'bb' => :country_code,
        'bd' => :country_code,
        'be' => :country_code,
        'bf' => :country_code,
        'bg' => :country_code,
        'bh' => :country_code,
        'bi' => :country_code,
        'bj' => :country_code,
        'bl' => :country_code,
        'bm' => :country_code,
        'bn' => :country_code,
        'bo' => :country_code,
        'br' => :country_code,
        'bs' => :country_code,
        'bt' => :country_code,
        'bv' => :country_code,
        'bw' => :country_code,
        'by' => :country_code,
        'bz' => :country_code,
        'ca' => :country_code,
        'cc' => :country_code,
        'cd' => :country_code,
        'cf' => :country_code,
        'cg' => :country_code,
        'ch' => :country_code,
        'ci' => :country_code,
        'ck' => :country_code,
        'cl' => :country_code,
        'cm' => :country_code,
        'cn' => :country_code,
        'co' => :country_code,
        'cr' => :country_code,
        'cu' => :country_code,
        'cv' => :country_code,
        'cx' => :country_code,
        'cy' => :country_code,
        'cz' => :country_code,
        'de' => :country_code,
        'dj' => :country_code,
        'dk' => :country_code,
        'dm' => :country_code,
        'do' => :country_code,
        'dz' => :country_code,
        'ec' => :country_code,
        'ee' => :country_code,
        'eg' => :country_code,
        'eh' => :country_code,
        'er' => :country_code,
        'es' => :country_code,
        'et' => :country_code,
        'eu' => :country_code,
        'fi' => :country_code,
        'fj' => :country_code,
        'fk' => :country_code,
        'fm' => :country_code,
        'fo' => :country_code,
        'fr' => :country_code,
        'ga' => :country_code,
        'gb' => :country_code,
        'gd' => :country_code,
        'ge' => :country_code,
        'gf' => :country_code,
        'gg' => :country_code,
        'gh' => :country_code,
        'gi' => :country_code,
        'gl' => :country_code,
        'gm' => :country_code,
        'gn' => :country_code,
        'gp' => :country_code,
        'gq' => :country_code,
        'gr' => :country_code,
        'gs' => :country_code,
        'gt' => :country_code,
        'gu' => :country_code,
        'gw' => :country_code,
        'gy' => :country_code,
        'hk' => :country_code,
        'hm' => :country_code,
        'hn' => :country_code,
        'hr' => :country_code,
        'ht' => :country_code,
        'hu' => :country_code,
        'id' => :country_code,
        'ie' => :country_code,
        'il' => :country_code,
        'im' => :country_code,
        'in' => :country_code,
        'io' => :country_code,
        'iq' => :country_code,
        'ir' => :country_code,
        'is' => :country_code,
        'it' => :country_code,
        'je' => :country_code,
        'jm' => :country_code,
        'jo' => :country_code,
        'jp' => :country_code,
        'ke' => :country_code,
        'kg' => :country_code,
        'kh' => :country_code,
        'ki' => :country_code,
        'km' => :country_code,
        'kn' => :country_code,
        'kp' => :country_code,
        'kr' => :country_code,
        'kw' => :country_code,
        'ky' => :country_code,
        'kz' => :country_code,
        'la' => :country_code,
        'lb' => :country_code,
        'lc' => :country_code,
        'li' => :country_code,
        'lk' => :country_code,
        'lr' => :country_code,
        'ls' => :country_code,
        'lt' => :country_code,
        'lu' => :country_code,
        'lv' => :country_code,
        'ly' => :country_code,
        'ma' => :country_code,
        'mc' => :country_code,
        'md' => :country_code,
        'me' => :country_code,
        'mf' => :country_code,
        'mg' => :country_code,
        'mh' => :country_code,
        'mk' => :country_code,
        'ml' => :country_code,
        'mm' => :country_code,
        'mn' => :country_code,
        'mo' => :country_code,
        'mp' => :country_code,
        'mq' => :country_code,
        'mr' => :country_code,
        'ms' => :country_code,
        'mt' => :country_code,
        'mu' => :country_code,
        'mv' => :country_code,
        'mw' => :country_code,
        'mx' => :country_code,
        'my' => :country_code,
        'mz' => :country_code,
        'na' => :country_code,
        'nc' => :country_code,
        'ne' => :country_code,
        'nf' => :country_code,
        'ng' => :country_code,
        'ni' => :country_code,
        'nl' => :country_code,
        'no' => :country_code,
        'np' => :country_code,
        'nr' => :country_code,
        'nu' => :country_code,
        'nz' => :country_code,
        'om' => :country_code,
        'pa' => :country_code,
        'pe' => :country_code,
        'pf' => :country_code,
        'pg' => :country_code,
        'ph' => :country_code,
        'pk' => :country_code,
        'pl' => :country_code,
        'pm' => :country_code,
        'pn' => :country_code,
        'pr' => :country_code,
        'ps' => :country_code,
        'pt' => :country_code,
        'pw' => :country_code,
        'py' => :country_code,
        'qa' => :country_code,
        're' => :country_code,
        'ro' => :country_code,
        'rs' => :country_code,
        'ru' => :country_code,
        'rw' => :country_code,
        'sa' => :country_code,
        'sb' => :country_code,
        'sc' => :country_code,
        'sd' => :country_code,
        'se' => :country_code,
        'sg' => :country_code,
        'sh' => :country_code,
        'si' => :country_code,
        'sj' => :country_code,
        'sk' => :country_code,
        'sl' => :country_code,
        'sm' => :country_code,
        'sn' => :country_code,
        'so' => :country_code,
        'sr' => :country_code,
        'st' => :country_code,
        'su' => :country_code,
        'sv' => :country_code,
        'sy' => :country_code,
        'sz' => :country_code,
        'tc' => :country_code,
        'td' => :country_code,
        'tf' => :country_code,
        'tg' => :country_code,
        'th' => :country_code,
        'tj' => :country_code,
        'tk' => :country_code,
        'tl' => :country_code,
        'tm' => :country_code,
        'tn' => :country_code,
        'to' => :country_code,
        'tp' => :country_code,
        'tr' => :country_code,
        'tt' => :country_code,
        'tv' => :country_code,
        'tw' => :country_code,
        'tz' => :country_code,
        'ua' => :country_code,
        'ug' => :country_code,
        'uk' => :country_code,
        'um' => :country_code,
        'us' => :country_code,
        'uy' => :country_code,
        'uz' => :country_code,
        'va' => :country_code,
        'vc' => :country_code,
        've' => :country_code,
        'vg' => :country_code,
        'vi' => :country_code,
        'vn' => :country_code,
        'vu' => :country_code,
        'wf' => :country_code,
        'ws' => :country_code,
        'ye' => :country_code,
        'yt' => :country_code,
        'yu' => :country_code,
        'za' => :country_code,
        'zm' => :country_code,
        'zw' => :country_code,
        'aero' => :sponsored,
        'asia' => :sponsored,
        'cat' => :sponsored,
        'coop' => :sponsored,
        'jobs' => :sponsored,
        'mobi' => :sponsored,
        'museum' => :sponsored,
        'name' => :sponsored,
        'pro' => :sponsored,
        'travel' => :sponsored,
        'tel' => :sponsored,
        'com' => :generic,
        'net' => :generic,
        'org' => :generic,
        'info' => :generic,
        'biz' => :generic_restricted,
        'edu' => :generic_restricted,
        'gov' => :generic_restricted,
        'int' => :generic_restricted,
        'mil' => :generic_restricted,
      }
    end
  end
end
