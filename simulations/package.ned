package ethnet4.simulations;

import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.ipv6.StandardHost6;


@license(LGPL);
//
// TODO documentation
//
network ethnet
{
    @display("bgb=519,353");
    submodules:
        Configurator: Ipv4FlatNetworkConfigurator {
            @display("p=239,31");
        }
        server: StandardHost6 {
            @display("p=98,212");
        }
        client3: StandardHost6 {
            @display("p=382,226");
        }
        client1: StandardHost6 {
            @display("p=382,93");
        }
        client2: StandardHost6 {
            @display("p=382,162");
        }
        client4: StandardHost6 {
            @display("p=382,303");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}

