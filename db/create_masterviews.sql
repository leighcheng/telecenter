create or replace view masterviews as
select callcenters.name, callcenters.priority, callcenters.networked, cdns.extension, outsidenumbers.dn 
from callcenters 
left outer join cdns on callcenters.id = cdns.callcenter_id
left outer join outsidenumbers on callcenters.id = outsidenumbers.callcenter_id