<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AppointmentBookingSystemAzure" generation="1" functional="0" release="0" Id="b6548d4b-db3f-4edb-97a1-f0d85b56c6d9" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AppointmentBookingSystemAzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MvcWebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/LB:MvcWebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="WCFServiceWebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/LB:WCFServiceWebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MapMvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MapMvcWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WCFServiceWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MapWCFServiceWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WCFServiceWebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MapWCFServiceWebRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MvcWebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WCFServiceWebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMvcWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMvcWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1Instances" />
          </setting>
        </map>
        <map name="MapWCFServiceWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWCFServiceWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MvcWebRole1" generation="1" functional="0" release="0" software="C:\Users\Ross\Documents\Visual Studio 2010\Projects\AppointmentBookingSystem\AppointmentBookingSystemAzure\csx\Debug\roles\MvcWebRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MvcWebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MvcWebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WCFServiceWebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1Instances" />
            <sCSPolicyFaultDomainMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WCFServiceWebRole1" generation="1" functional="0" release="0" software="C:\Users\Ross\Documents\Visual Studio 2010\Projects\AppointmentBookingSystem\AppointmentBookingSystemAzure\csx\Debug\roles\WCFServiceWebRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WCFServiceWebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MvcWebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WCFServiceWebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="WCFServiceWebRole1.svclog" defaultAmount="[1000,1000,1000]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1Instances" />
            <sCSPolicyFaultDomainMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="MvcWebRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WCFServiceWebRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MvcWebRole1Instances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WCFServiceWebRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="f659c422-399c-45b1-8e79-0423ad9a0ff7" ref="Microsoft.RedDog.Contract\ServiceContract\AppointmentBookingSystemAzureContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="eec07246-5720-48da-93d8-f7446f411f1a" ref="Microsoft.RedDog.Contract\Interface\MvcWebRole1:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/MvcWebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="f4d58f5c-fee4-42b6-b51c-e5ce1f5064df" ref="Microsoft.RedDog.Contract\Interface\WCFServiceWebRole1:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/AppointmentBookingSystemAzure/AppointmentBookingSystemAzureGroup/WCFServiceWebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>