/**********************************************************\

  Auto-generated PluginTestAPI.h

\**********************************************************/

#include <string>
#include <sstream>
#include <boost/weak_ptr.hpp>
#include "JSAPIAuto.h"
#include "BrowserHost.h"
#include "PluginTest.h"

#ifndef H_PluginTestAPI
#define H_PluginTestAPI

class PluginTestAPI : public FB::JSAPIAuto
{
public:
    ////////////////////////////////////////////////////////////////////////////
    /// @fn PluginTestAPI::PluginTestAPI(const PluginTestPtr& plugin, const FB::BrowserHostPtr host)
    ///
    /// @brief  Constructor for your JSAPI object.
    ///         You should register your methods, properties, and events
    ///         that should be accessible to Javascript from here.
    ///
    /// @see FB::JSAPIAuto::registerMethod
    /// @see FB::JSAPIAuto::registerProperty
    /// @see FB::JSAPIAuto::registerEvent
    ////////////////////////////////////////////////////////////////////////////
    PluginTestAPI(const PluginTestPtr& plugin, const FB::BrowserHostPtr& host) :
        m_plugin(plugin), m_host(host)
    {
        registerMethod("echo",      make_method(this, &PluginTestAPI::echo));
        registerMethod("testEvent", make_method(this, &PluginTestAPI::testEvent));
        
        // Read-write property
        registerProperty("testString",
                         make_property(this,
                                       &PluginTestAPI::get_testString,
                                       &PluginTestAPI::set_testString));
        
        // Read-only property
        registerProperty("version",
                         make_property(this,
                                       &PluginTestAPI::get_version));
    }

    ///////////////////////////////////////////////////////////////////////////////
    /// @fn PluginTestAPI::~PluginTestAPI()
    ///
    /// @brief  Destructor.  Remember that this object will not be released until
    ///         the browser is done with it; this will almost definitely be after
    ///         the plugin is released.
    ///////////////////////////////////////////////////////////////////////////////
    virtual ~PluginTestAPI() {};

    PluginTestPtr getPlugin();

    // Read/Write property ${PROPERTY.ident}
    std::string get_testString();
    void set_testString(const std::string& val);

    // Read-only property ${PROPERTY.ident}
    std::string get_version();

    void siginthandler(int sig);
    FB::variant connect();
    // Method echo
    FB::variant echo(const FB::variant& msg);
    
    
    
    
    // Event helpers
    FB_JSAPI_EVENT(test, 0, ());
    FB_JSAPI_EVENT(echo, 2, (const FB::variant&, const int));

    // Method test-event
    void testEvent();

private:
    PluginTestWeakPtr m_plugin;
    FB::BrowserHostPtr m_host;

    std::string m_testString;
};

#endif // H_PluginTestAPI

