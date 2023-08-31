<?php
/**
 * #ddev-generated
 * ddev manages this file and may delete or overwrite it unless the above line is removed.
 * This file comes from "ddev get julienloizelet/ddev-crowdsec-php"
 *
 */
/**
 * Run a specific action from browser (development only, do not use in production)
 * This script should be copied in the pub folder of your Magento 2 sources
 *
 */

use Magento\Framework\Api\SearchCriteriaBuilder;
use Magento\Framework\App\AreaList;
use Magento\Framework\App\ExceptionHandlerInterface;
use Magento\Framework\App\Request\Http as RequestHttp;
use Magento\Framework\App\Response\Http as ResponseHttp;
use Magento\Framework\App\State;
use Magento\Framework\Event\Manager;
use Magento\Framework\ObjectManager\ConfigLoaderInterface;
use Magento\Framework\ObjectManagerInterface;
use Magento\Framework\Registry;
use Magento\Framework\App\Config\Storage\WriterInterface;
use Magento\Framework\App\Cache\TypeListInterface;
use Magento\CatalogRule\Api\CatalogRuleRepositoryInterface;
use Magento\CatalogRule\Model\ResourceModel\Rule\Collection as RuleCollection;
use Magento\CatalogRule\Model\ResourceModel\Rule\CollectionFactory as RuleCollectionFactory;

require '../app/bootstrap.php';

class RunActionRunner extends \Magento\Framework\App\Http
    implements \Magento\Framework\AppInterface
{
    /**
     * @var SearchCriteriaBuilder
     */
    private $searchCriteriaBuilder;
    /**
     * @var WriterInterface
     */
    private $configWriter;
    /**
     * @var TypeListInterface
     */
    private $cacheTypeList;

    private $catalogRuleRepository;

    private $ruleCollectionFactory;

    public function __construct(
        ObjectManagerInterface $objectManager,
        Manager $eventManager,
        AreaList $areaList,
        RequestHttp $request,
        ResponseHttp $response,
        ConfigLoaderInterface $configLoader,
        State $state,
        Registry $registry,
        SearchCriteriaBuilder $searchCriteriaBuilder,
        WriterInterface $configWriter,
        TypeListInterface $cacheTypeList,
        CatalogRuleRepositoryInterface $catalogRuleRepository,
        RuleCollectionFactory $ruleCollectionFactory,
        ExceptionHandlerInterface $exceptionHandler = null
    ) {

        parent::__construct($objectManager, $eventManager, $areaList, $request, $response, $configLoader, $state,
            $registry, $exceptionHandler);

        $this->_state->setAreaCode('adminhtml');
        $this->searchCriteriaBuilder = $searchCriteriaBuilder;
        $this->configWriter = $configWriter;
        $this->cacheTypeList = $cacheTypeList;
        $this->catalogRuleRepository = $catalogRuleRepository;
        $this->ruleCollectionFactory = $ruleCollectionFactory;
    }

    function launch()
    {

        if (isset($_GET['action'])) {
            $action = $_GET['action'];

            switch ($action) {
                case 'delete-catalog-rules':
                    /** @var RuleCollection $ruleCollection */
                    $ruleCollection = $this->ruleCollectionFactory->create();
                    foreach ($ruleCollection as $rule) {
                        $this->catalogRuleRepository->deleteById($rule->getId());
                    }
                    $result = 'ok';
                    break;
                default:
                    throw new Exception("Unknown action type:$action");
            }

            $body = "
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'/>
    <title>Action: $action</title>
</head>

<body>
    <h1>$result</h1>
</body>
</html>
";
            $this->_response->setBody($body);

            return $this->_response;
        } else {
            exit('You must pass an "action" param' . \PHP_EOL);
        }
    }
}

$bootstrap = \Magento\Framework\App\Bootstrap::create(BP, $_SERVER);
$app = $bootstrap->createApplication('RunActionRunner');
$bootstrap->run($app);
