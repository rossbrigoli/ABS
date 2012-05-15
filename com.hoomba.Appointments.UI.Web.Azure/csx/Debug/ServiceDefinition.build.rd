<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="com.hoomba.Appointments.UI.Web.Azure" generation="1" functional="0" release="0" Id="4854cfe4-4c5f-41a0-b2a2-db0d6481bb11" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="com.hoomba.Appointments.UI.Web.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="com.hoomba.Appointments.UI.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/LB:com.hoomba.Appointments.UI.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="com.hoomba.Appointments.UI.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/Mapcom.hoomba.Appointments.UI.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="com.hoomba.Appointments.UI.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/Mapcom.hoomba.Appointments.UI.WebInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:com.hoomba.Appointments.UI.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapcom.hoomba.Appointments.UI.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="Mapcom.hoomba.Appointments.UI.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.WebInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="com.hoomba.Appointments.UI.Web" generation="1" functional="0" release="0" software="C:\Users\Ross\Documents\Visual Studio 2010\Projects\AppointmentBookingSystem\com.hoomba.Appointments.UI.Web.Azure\csx\Debug\roles\com.hoomba.Appointments.UI.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;com.hoomba.Appointments.UI.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;com.hoomba.Appointments.UI.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.WebInstances" />
            <sCSPolicyFaultDomainMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="com.hoomba.Appointments.UI.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="com.hoomba.Appointments.UI.WebInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="8d7edb21-34ed-45f0-ac0a-c2b55b6f093e" ref="Microsoft.RedDog.Contract\ServiceContract\com.hoomba.Appointments.UI.Web.AzureContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="245dd11a-f3d3-4bb7-a3ab-aebc4c457ff3" ref="Microsoft.RedDog.Contract\Interface\com.hoomba.Appointments.UI.Web:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/com.hoomba.Appointments.UI.Web.Azure/com.hoomba.Appointments.UI.Web.AzureGroup/com.hoomba.Appointments.UI.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>