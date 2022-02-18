resource "aws_vpc" "this" {
  cidr_block = "192.168.0.0/16"
  tags       = merge(local.cammon_tags, { Name = "VPC Vaitimao" })

}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags   = merge(local.cammon_tags, { Name = "Internet Gateway" })
}

resource "aws_subnet" "this" {
  for_each = {
    "subnet_a" : ["192.168.1.0/24", "${var.aws_region}a", "Subnet A"]
    "subnet_b" : ["192.168.2.0/24", "${var.aws_region}b", "Subnet B"]
    "subnet_c" : ["192.168.3.0/24", "${var.aws_region}c", "Subnet C"]
  }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value[0]
  availability_zone = each.value[1]

  tags = merge(local.cammon_tags, { Name = each.value[2] })
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = merge(local.cammon_tags, { Name = "Terraform Public" })
}

resource "aws_route_table_association" "this" {
  for_each = local.subnet_ids

  subnet_id      = each.value
  route_table_id = aws_route_table.public.id
}

#aws_vpc: Criando VPC
#aws_internet_gateway: liberando internet na rede toda.
#aws_subnet: gerando subnet para az1,2,3.
#aws_route_table: criando uma VPC Publica.
#CIDR_BLOCK: Trafeco para liberar Internet.
#aws_route_table_association: associando toda rede.
