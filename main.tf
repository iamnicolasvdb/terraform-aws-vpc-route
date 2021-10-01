resource "aws_route" "this" {
  count = length(var.routes)

  route_table_id              = lookup(var.routes[count.index],"route_table_id",null)

  destination_cidr_block      = lookup(var.routes[count.index],"destination_cidr_block",null)
  destination_ipv6_cidr_block = lookup(var.routes[count.index],"destination_ipv6_cidr_block",null)
  destination_prefix_list_id  = lookup(var.routes[count.index],"destination_prefix_list_id",null)

  carrier_gateway_id          = lookup(var.routes[count.index],"carrier_gateway_id",null)
  egress_only_gateway_id      = lookup(var.routes[count.index],"egress_only_gateway_id",null)
  gateway_id                  = lookup(var.routes[count.index],"gateway_id",null)
  instance_id                 = lookup(var.routes[count.index],"instance_id",null)
  nat_gateway_id              = lookup(var.routes[count.index],"nat_gateway_id",null)
  local_gateway_id            = lookup(var.routes[count.index],"local_gateway_id",null)
  network_interface_id        = lookup(var.routes[count.index],"network_interface_id",null)
  vpc_endpoint_id             = lookup(var.routes[count.index],"vpc_endpoint_id",null)
  vpc_peering_connection_id   = lookup(var.routes[count.index],"vpc_peering_connection_id",null)
  transit_gateway_id          = lookup(var.routes[count.index],"transit_gateway_id",null)
}